/*
 * Copyright (c) 2009, 2013, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.  Oracle designates this
 * particular file as subject to the "Classpath" exception as provided
 * by Oracle in the LICENSE file that accompanied this code.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 */

#include "awt_ole.h"
#include <time.h>
#include <sys/timeb.h>

namespace SUN_DBG_NS{
  //WIN32 debug channel approach
  //inline void DbgOut(LPCTSTR lpStr) { ::OutputDebugString(lpStr); }

  //Java debug channel approach
  inline void DbgOut(LPCTSTR lpStr) { DTRACE_PRINT(_B(lpStr)); }

  LPCTSTR CreateTimeStamp(LPTSTR lpBuffer, size_t iBufferSize)
  {
        struct _timeb tb;
        _ftime(&tb);
        size_t len = _tcsftime(lpBuffer, iBufferSize, _T("%b %d %H:%M:%S"), localtime(&tb.time));
        if (len && len+4 < iBufferSize) {
            if (_sntprintf(lpBuffer+len, iBufferSize-len-1, _T(".%03d"), tb.millitm) < 0) {
                 lpBuffer[iBufferSize-len-1] = 0;
            }
        }
        return lpBuffer;
  }

  #define DTRACE_BUF_LEN 1024
  void snvTrace(LPCTSTR lpszFormat, va_list argList)
  {
        TCHAR szBuffer[DTRACE_BUF_LEN];
        if (_vsntprintf( szBuffer, DTRACE_BUF_LEN, lpszFormat, argList ) < 0) {
            szBuffer[DTRACE_BUF_LEN-1] = 0;
        }
        TCHAR szTime[32];
        CreateTimeStamp(szTime, sizeof(szTime));
        _tcscat(szTime, _T(" "));
        TCHAR szBuffer1[DTRACE_BUF_LEN];
        size_t iFormatLen = _tcslen(lpszFormat);
        BOOL bErrorReport = iFormatLen>6 && _tcscmp(lpszFormat + iFormatLen - 6, _T("[%08x]"))==0;
        size_t iTimeLen = _tcslen(szTime);
        if (_sntprintf(
            szBuffer1 + iTimeLen,
            DTRACE_BUF_LEN - iTimeLen - 1, //reserver for \n
            _T("P:%04d T:%04d ") TRACE_SUFFIX _T("%s%s"),
            ::GetCurrentProcessId(),
            ::GetCurrentThreadId(),
            bErrorReport?_T("Error:"):_T(""),
            szBuffer) < 0)
        {
            _tcscpy_s(szBuffer1 + DTRACE_BUF_LEN - 5, 5, _T("...")); //reserver for \n
        }
        memcpy(szBuffer1, szTime, iTimeLen*sizeof(TCHAR));
        _tcscat(szBuffer1, _T("\n"));
        DbgOut( szBuffer1 );
  }
  void snTrace(LPCTSTR lpszFormat, ... )
  {
        va_list argList;
        va_start(argList, lpszFormat);
        snvTrace(lpszFormat, argList);
        va_end(argList);
  }
}//SUN_DBG_NS namespace end


#ifdef __MINGW32__
#undef new
// gcc relying on the MinGW compatibility layer is missing this util
namespace _com_util {
    BSTR WINAPI ConvertStringToBSTR(const char *ptr) {
        DWORD cwch;
        BSTR bstr(nullptr);

        if (ptr == nullptr) return nullptr;

        /* Compute the needed size with the NULL terminator */
        cwch = ::MultiByteToWideChar(CP_ACP, 0, ptr, -1, nullptr, 0);
        if (cwch == 0) return nullptr;

        /* Allocate the BSTR (without the NULL terminator) */
        bstr = ::SysAllocStringLen(nullptr, cwch - 1);
        if (!bstr) {
            ::_com_issue_error(HRESULT_FROM_WIN32(ERROR_OUTOFMEMORY));
            return nullptr;
        }

        /* Convert the string */
        if (::MultiByteToWideChar(CP_ACP, 0, ptr, -1, bstr, cwch) == 0) {
            /* We failed, clean everything up */
            cwch = ::GetLastError();

            ::SysFreeString(bstr);
            bstr = nullptr;

            ::_com_issue_error(!IS_ERROR(cwch) ? HRESULT_FROM_WIN32(cwch) : cwch);
        }

        return bstr;
    }

    char* WINAPI ConvertBSTRToString(BSTR ptr) {
        DWORD cb, cwch;
        char *szOut = nullptr;

        if (!ptr) return nullptr;

        /* Retrieve the size of the BSTR with the NULL terminator */
        cwch = ::SysStringLen(ptr) + 1;

        /* Compute the needed size with the NULL terminator */
        cb = ::WideCharToMultiByte(CP_ACP, 0, ptr, cwch, NULL, 0, NULL, NULL);
        if (cb == 0) {
            cwch = ::GetLastError();
            ::_com_issue_error(!IS_ERROR(cwch) ? HRESULT_FROM_WIN32(cwch) : cwch);
            return NULL;
        }

        /* Allocate the string */
        szOut = (char*)::operator new(cb * sizeof(char));
        if (!szOut) {
            ::_com_issue_error(HRESULT_FROM_WIN32(ERROR_OUTOFMEMORY));
            return NULL;
        }

        /* Convert the string and NULL-terminate */
        szOut[cb - 1] = '\0';
        if (::WideCharToMultiByte(CP_ACP, 0, ptr, cwch, szOut, cb, NULL, NULL) == 0) {
            /* We failed, clean everything up */
            cwch = ::GetLastError();

            ::operator delete(szOut);
            szOut = NULL;

            ::_com_issue_error(!IS_ERROR(cwch) ? HRESULT_FROM_WIN32(cwch) : cwch);
        }

        return szOut;
    }
}
#endif
