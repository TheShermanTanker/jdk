/*
 * Copyright (c) 2022, 2024, Oracle and/or its affiliates. All rights reserved.
 * Copyright (c) 2024, Alibaba Group Holding Limited. All Rights Reserved.
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
package jdk.internal.classfile.impl;

import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.DirectMethodHandleDesc;
import java.lang.constant.DynamicConstantDesc;
import java.lang.constant.MethodTypeDesc;
import java.lang.invoke.MethodHandleInfo;
import java.util.ArrayList;
import java.util.List;

import java.lang.classfile.BootstrapMethodEntry;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.ConstantDynamicEntry;
import java.lang.classfile.constantpool.ConstantPoolBuilder;
import java.lang.classfile.Opcode;
import java.lang.classfile.TypeKind;
import java.lang.classfile.constantpool.LoadableConstantEntry;
import java.lang.classfile.constantpool.MemberRefEntry;
import java.lang.classfile.constantpool.MethodHandleEntry;
import java.lang.classfile.constantpool.NameAndTypeEntry;

public class BytecodeHelpers {

    private BytecodeHelpers() {
    }

    public static IllegalArgumentException cannotConvertException(TypeKind from, TypeKind to) {
        return new IllegalArgumentException(String.format("convert %s -> %s", from, to));
    }

    public static Opcode loadOpcode(TypeKind tk, int slot) {
        return switch (tk) {
            case INT, SHORT, BYTE, CHAR, BOOLEAN
                           -> iload(slot);
            case LONG      -> lload(slot);
            case DOUBLE    -> dload(slot);
            case FLOAT     -> fload(slot);
            case REFERENCE -> aload(slot);
            case VOID      -> throw new IllegalArgumentException("void");
        };
    }

    public static Opcode aload(int slot) {
        return switch (slot) {
            case 0 -> Opcode.ALOAD_0;
            case 1 -> Opcode.ALOAD_1;
            case 2 -> Opcode.ALOAD_2;
            case 3 -> Opcode.ALOAD_3;
            default -> (slot < 256) ? Opcode.ALOAD : Opcode.ALOAD_W;
        };
    }

    public static Opcode fload(int slot) {
        return switch (slot) {
            case 0 -> Opcode.FLOAD_0;
            case 1 -> Opcode.FLOAD_1;
            case 2 -> Opcode.FLOAD_2;
            case 3 -> Opcode.FLOAD_3;
            default -> (slot < 256) ? Opcode.FLOAD : Opcode.FLOAD_W;
        };
    }

    public static Opcode dload(int slot) {
        return switch (slot) {
            case 0 -> Opcode.DLOAD_0;
            case 1 -> Opcode.DLOAD_1;
            case 2 -> Opcode.DLOAD_2;
            case 3 -> Opcode.DLOAD_3;
            default -> (slot < 256) ? Opcode.DLOAD : Opcode.DLOAD_W;
        };
    }

    public static Opcode lload(int slot) {
        return switch (slot) {
            case 0 -> Opcode.LLOAD_0;
            case 1 -> Opcode.LLOAD_1;
            case 2 -> Opcode.LLOAD_2;
            case 3 -> Opcode.LLOAD_3;
            default -> (slot < 256) ? Opcode.LLOAD : Opcode.LLOAD_W;
        };
    }

    public static Opcode iload(int slot) {
        return switch (slot) {
            case 0 -> Opcode.ILOAD_0;
            case 1 -> Opcode.ILOAD_1;
            case 2 -> Opcode.ILOAD_2;
            case 3 -> Opcode.ILOAD_3;
            default -> (slot < 256) ? Opcode.ILOAD : Opcode.ILOAD_W;
        };
    }

    public static Opcode storeOpcode(TypeKind tk, int slot) {
        return switch (tk) {
            case INT, SHORT, BYTE, CHAR, BOOLEAN
                           -> istore(slot);
            case LONG      -> lstore(slot);
            case DOUBLE    -> dstore(slot);
            case FLOAT     -> fstore(slot);
            case REFERENCE -> astore(slot);
            case VOID      -> throw new IllegalArgumentException("void");
        };
    }

    public static Opcode astore(int slot) {
        return switch (slot) {
            case 0 -> Opcode.ASTORE_0;
            case 1 -> Opcode.ASTORE_1;
            case 2 -> Opcode.ASTORE_2;
            case 3 -> Opcode.ASTORE_3;
            default -> (slot < 256) ? Opcode.ASTORE : Opcode.ASTORE_W;
        };
    }

    public static Opcode fstore(int slot) {
        return switch (slot) {
            case 0 -> Opcode.FSTORE_0;
            case 1 -> Opcode.FSTORE_1;
            case 2 -> Opcode.FSTORE_2;
            case 3 -> Opcode.FSTORE_3;
            default -> (slot < 256) ? Opcode.FSTORE : Opcode.FSTORE_W;
        };
    }

    public static Opcode dstore(int slot) {
        return switch (slot) {
            case 0 -> Opcode.DSTORE_0;
            case 1 -> Opcode.DSTORE_1;
            case 2 -> Opcode.DSTORE_2;
            case 3 -> Opcode.DSTORE_3;
            default -> (slot < 256) ? Opcode.DSTORE : Opcode.DSTORE_W;
        };
    }

    public static Opcode lstore(int slot) {
        return switch (slot) {
            case 0 -> Opcode.LSTORE_0;
            case 1 -> Opcode.LSTORE_1;
            case 2 -> Opcode.LSTORE_2;
            case 3 -> Opcode.LSTORE_3;
            default -> (slot < 256) ? Opcode.LSTORE : Opcode.LSTORE_W;
        };
    }

    public static Opcode istore(int slot) {
        return switch (slot) {
            case 0 -> Opcode.ISTORE_0;
            case 1 -> Opcode.ISTORE_1;
            case 2 -> Opcode.ISTORE_2;
            case 3 -> Opcode.ISTORE_3;
            default -> (slot < 256) ? Opcode.ISTORE : Opcode.ISTORE_W;
        };
    }

    public static Opcode returnOpcode(TypeKind tk) {
        return switch (tk) {
            case BYTE, SHORT, INT, CHAR, BOOLEAN -> Opcode.IRETURN;
            case FLOAT -> Opcode.FRETURN;
            case LONG -> Opcode.LRETURN;
            case DOUBLE -> Opcode.DRETURN;
            case REFERENCE -> Opcode.ARETURN;
            case VOID -> Opcode.RETURN;
        };
    }

    public static Opcode arrayLoadOpcode(TypeKind tk) {
        return switch (tk) {
            case BYTE, BOOLEAN -> Opcode.BALOAD;
            case SHORT -> Opcode.SALOAD;
            case INT -> Opcode.IALOAD;
            case FLOAT -> Opcode.FALOAD;
            case LONG -> Opcode.LALOAD;
            case DOUBLE -> Opcode.DALOAD;
            case REFERENCE -> Opcode.AALOAD;
            case CHAR -> Opcode.CALOAD;
            case VOID -> throw new IllegalArgumentException("void not an allowable array type");
        };
    }

    public static Opcode arrayStoreOpcode(TypeKind tk) {
        return switch (tk) {
            case BYTE, BOOLEAN -> Opcode.BASTORE;
            case SHORT -> Opcode.SASTORE;
            case INT -> Opcode.IASTORE;
            case FLOAT -> Opcode.FASTORE;
            case LONG -> Opcode.LASTORE;
            case DOUBLE -> Opcode.DASTORE;
            case REFERENCE -> Opcode.AASTORE;
            case CHAR -> Opcode.CASTORE;
            case VOID -> throw new IllegalArgumentException("void not an allowable array type");
        };
    }

    public static Opcode reverseBranchOpcode(Opcode op) {
        return switch (op) {
            case IFEQ -> Opcode.IFNE;
            case IFNE -> Opcode.IFEQ;
            case IFLT -> Opcode.IFGE;
            case IFGE -> Opcode.IFLT;
            case IFGT -> Opcode.IFLE;
            case IFLE -> Opcode.IFGT;
            case IF_ICMPEQ -> Opcode.IF_ICMPNE;
            case IF_ICMPNE -> Opcode.IF_ICMPEQ;
            case IF_ICMPLT -> Opcode.IF_ICMPGE;
            case IF_ICMPGE -> Opcode.IF_ICMPLT;
            case IF_ICMPGT -> Opcode.IF_ICMPLE;
            case IF_ICMPLE -> Opcode.IF_ICMPGT;
            case IF_ACMPEQ -> Opcode.IF_ACMPNE;
            case IF_ACMPNE -> Opcode.IF_ACMPEQ;
            case IFNULL -> Opcode.IFNONNULL;
            case IFNONNULL -> Opcode.IFNULL;
            default -> throw new IllegalArgumentException("Unknown branch instruction: " + op);
        };
    }

    public static Opcode convertOpcode(TypeKind from, TypeKind to) {
        return switch (from) {
            case INT ->
                    switch (to) {
                        case LONG -> Opcode.I2L;
                        case FLOAT -> Opcode.I2F;
                        case DOUBLE -> Opcode.I2D;
                        case BYTE -> Opcode.I2B;
                        case CHAR -> Opcode.I2C;
                        case SHORT -> Opcode.I2S;
                        default -> throw cannotConvertException(from, to);
                    };
            case LONG ->
                    switch (to) {
                        case FLOAT -> Opcode.L2F;
                        case DOUBLE -> Opcode.L2D;
                        case INT -> Opcode.L2I;
                        default -> throw cannotConvertException(from, to);
                    };
            case DOUBLE ->
                    switch (to) {
                        case FLOAT -> Opcode.D2F;
                        case LONG -> Opcode.D2L;
                        case INT -> Opcode.D2I;
                        default -> throw cannotConvertException(from, to);
                    };
            case FLOAT ->
                    switch (to) {
                        case LONG -> Opcode.F2L;
                        case DOUBLE -> Opcode.F2D;
                        case INT -> Opcode.F2I;
                        default -> throw cannotConvertException(from, to);
                    };
            default -> throw cannotConvertException(from, to);
        };
    }

    static void validateSipush(long value) {
        if (value < Short.MIN_VALUE || Short.MAX_VALUE < value)
            throw new IllegalArgumentException(
                    "SIPUSH: value must be within: Short.MIN_VALUE <= value <= Short.MAX_VALUE, found: "
                            .concat(Long.toString(value)));
    }

    static void validateBipush(long value) {
        if (value < Byte.MIN_VALUE || Byte.MAX_VALUE < value)
            throw new IllegalArgumentException(
                    "BIPUSH: value must be within: Byte.MIN_VALUE <= value <= Byte.MAX_VALUE, found: "
                            .concat(Long.toString(value)));
    }

    static void validateSipush(ConstantDesc d) {
        if (d instanceof Integer iVal) {
            validateSipush(iVal.longValue());
        } else if (d instanceof Long lVal) {
            validateSipush(lVal.longValue());
        } else {
            throw new IllegalArgumentException("SIPUSH: not an integral number: ".concat(d.toString()));
        }
    }

    static void validateBipush(ConstantDesc d) {
        if (d instanceof Integer iVal) {
            validateBipush(iVal.longValue());
        } else if (d instanceof Long lVal) {
            validateBipush(lVal.longValue());
        } else {
            throw new IllegalArgumentException("BIPUSH: not an integral number: ".concat(d.toString()));
        }
    }

    public static MethodHandleEntry handleDescToHandleInfo(ConstantPoolBuilder constantPool, DirectMethodHandleDesc bootstrapMethod) {
        ClassEntry bsOwner = constantPool.classEntry(bootstrapMethod.owner());
        NameAndTypeEntry bsNameAndType = constantPool.nameAndTypeEntry(constantPool.utf8Entry(bootstrapMethod.methodName()),
                                                               constantPool.utf8Entry(bootstrapMethod.lookupDescriptor()));
        int bsRefKind = bootstrapMethod.refKind();
        MemberRefEntry bsReference = toBootstrapMemberRef(constantPool, bsRefKind, bsOwner, bsNameAndType, bootstrapMethod.isOwnerInterface());

        return constantPool.methodHandleEntry(bsRefKind, bsReference);
    }

    static MemberRefEntry toBootstrapMemberRef(ConstantPoolBuilder constantPool, int bsRefKind, ClassEntry owner, NameAndTypeEntry nat, boolean isOwnerInterface) {
        return isOwnerInterface
               ? constantPool.interfaceMethodRefEntry(owner, nat)
               : bsRefKind <= MethodHandleInfo.REF_putStatic
                 ? constantPool.fieldRefEntry(owner, nat)
                 : constantPool.methodRefEntry(owner, nat);
    }

    static ConstantDynamicEntry handleConstantDescToHandleInfo(ConstantPoolBuilder constantPool, DynamicConstantDesc<?> desc) {
        ConstantDesc[] bootstrapArgs = desc.bootstrapArgs();
        List<LoadableConstantEntry> staticArgs = new ArrayList<>(bootstrapArgs.length);
        for (ConstantDesc bootstrapArg : bootstrapArgs)
            staticArgs.add(constantPool.loadableConstantEntry(bootstrapArg));
        MethodHandleEntry methodHandleEntry = handleDescToHandleInfo(constantPool, desc.bootstrapMethod());
        BootstrapMethodEntry bme = constantPool.bsmEntry(methodHandleEntry, staticArgs);
        return constantPool.constantDynamicEntry(bme,
                                                 constantPool.nameAndTypeEntry(desc.constantName(),
                                                                       desc.constantType()));
    }

    public static void validateValue(Opcode opcode, ConstantDesc v) {
        switch (opcode) {
            case ACONST_NULL -> {
                if (v != null && v != ConstantDescs.NULL)
                    throw new IllegalArgumentException("value must be null or ConstantDescs.NULL with opcode ACONST_NULL");
            }
            case SIPUSH ->
                    validateSipush(v);
            case BIPUSH ->
                    validateBipush(v);
            case LDC, LDC_W, LDC2_W -> {
                if (v == null)
                    throw new IllegalArgumentException("`null` must use ACONST_NULL");
            }
            default -> {
                var exp = opcode.constantValue();
                if (exp == null)
                    throw new IllegalArgumentException("Can not use Opcode: " + opcode + " with constant()");
                if (v == null || !(v.equals(exp) || (exp instanceof Long l && v.equals(l.intValue())))) {
                    var t = (exp instanceof Long) ? "L" : (exp instanceof Float) ? "f" : (exp instanceof Double) ? "d" : "";
                    throw new IllegalArgumentException("value must be " + exp + t + " with opcode " + opcode.name());
                }
            }
        }
    }

    public static Opcode ldcOpcode(LoadableConstantEntry entry) {
        return entry.typeKind().slotSize() == 2 ? Opcode.LDC2_W
                : entry.index() > 0xff ? Opcode.LDC_W
                : Opcode.LDC;
    }

    public static LoadableConstantEntry constantEntry(ConstantPoolBuilder constantPool,
                                                      ConstantDesc constantValue) {
        // this method is invoked during JVM bootstrap - cannot use pattern switch
        if (constantValue instanceof Integer value) {
            return constantPool.intEntry(value);
        }
        if (constantValue instanceof String value) {
            return constantPool.stringEntry(value);
        }
        if (constantValue instanceof ClassDesc value && !value.isPrimitive()) {
            return constantPool.classEntry(value);
        }
        if (constantValue instanceof Long value) {
            return constantPool.longEntry(value);
        }
        if (constantValue instanceof Float value) {
            return constantPool.floatEntry(value);
        }
        if (constantValue instanceof Double value) {
            return constantPool.doubleEntry(value);
        }
        if (constantValue instanceof MethodTypeDesc value) {
            return constantPool.methodTypeEntry(value);
        }
        if (constantValue instanceof DirectMethodHandleDesc value) {
            return handleDescToHandleInfo(constantPool, value);
        } if (constantValue instanceof DynamicConstantDesc<?> value) {
            return handleConstantDescToHandleInfo(constantPool, value);
        }
        throw new UnsupportedOperationException("not yet: " + constantValue);
    }
}
