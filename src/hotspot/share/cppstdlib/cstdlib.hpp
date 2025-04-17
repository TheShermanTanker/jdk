/*
 * Copyright (c) 2025, 2026, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.
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
 *
 */

#ifndef SHARE_CPPSTDLIB_CSTDLIB_HPP
#define SHARE_CPPSTDLIB_CSTDLIB_HPP

#include "utilities/compilerWarnings.hpp"

// HotSpot usage for <cstdlib>:
//
// Some functions are explicitly forbidden below. That may not be a complete
// list of all the functions we should forbid.
//
// We assume <cstdlib> provides definitions in the global namespace, in
// addition to providing them in the std namespace. We prefer to use the names
// in the global namespace.

#include "utilities/vmassert_uninstall.hpp"

#include <cstdlib>

#include "utilities/vmassert_reinstall.hpp" // don't reorder

#endif // SHARE_CPPSTDLIB_CSTDLIB_HPP
