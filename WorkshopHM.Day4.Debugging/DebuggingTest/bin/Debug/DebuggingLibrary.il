
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly DebuggingLibrary
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 10 44 65 62 75 67 67 69 6E 67 4C 69 62 72   // ...DebuggingLibr
                                                                                              61 72 79 00 00 )                                  // ary..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 10 44 65 62 75 67 67 69 6E 67 4C 69 62 72   // ...DebuggingLibr
                                                                                                61 72 79 00 00 )                                  // ary..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 31 39 00 00 )                            //  2019..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 62 66 33 34 62 64 65 31 2D 34 31 61 64   // ..$bf34bde1-41ad
                                                                                                  2D 34 37 38 34 2D 38 62 34 33 2D 63 32 36 33 37   // -4784-8b43-c2637
                                                                                                  37 33 64 36 39 34 65 00 00 )                      // 73d694e..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 36 2E 31 01   // ,Version=v4.6.1.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 36 2E 31 )          // amework 4.6.1
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module DebuggingLibrary.dll
// MVID: {B2F3D6EC-A231-4BA1-8193-6608F965AEC1}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00F30000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit DebuggingLibrary.Register
       extends [mscorlib]System.Object
{
  .field private class [mscorlib]System.Collections.Generic.List`1<int32> data
  .method public hidebysig instance void 
          Enter(string username,
                int32 activationKey) cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "username"
    IL_0008:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.2
    IL_000f:  ldc.i4.0
    IL_0010:  bgt.s      IL_001d

    IL_0012:  ldstr      "activationKey"
    IL_0017:  newobj     instance void [mscorlib]System.ArgumentOutOfRangeException::.ctor(string)
    IL_001c:  throw

    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  ldarg.2
    IL_0020:  call       instance bool DebuggingLibrary.Register::CheckUser(string,
                                                                            int32)
    IL_0025:  brfalse.s   IL_0032

    IL_0027:  ldstr      "Invalid activation key!"
    IL_002c:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0031:  ret

    IL_0032:  ldarg.0
    IL_0033:  ldarg.1
    IL_0034:  call       instance void DebuggingLibrary.Register::DoSmth(string)
    IL_0039:  ret
  } // end of method Register::Enter

  .method public hidebysig instance bool 
          CheckUser(string username,
                    int32 activationKey) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<int32> DebuggingLibrary.Register::data
    IL_0006:  ldarg.2
    IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_000c:  brfalse.s  IL_0010

    IL_000e:  ldc.i4.1
    IL_000f:  ret

    IL_0010:  ldc.i4.0
    IL_0011:  ret
  } // end of method Register::CheckUser

  .method public hidebysig instance void 
          DoSmth(string username) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldstr      "Hello, "
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "! Our key has been activated. Let's start to work!"
    IL_000b:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0010:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0015:  ret
  } // end of method Register::DoSmth

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       51 (0x33)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0006:  dup
    IL_0007:  ldc.i4     0x1e0f3
    IL_000c:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0011:  dup
    IL_0012:  ldc.i4     0x4e720
    IL_0017:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_001c:  dup
    IL_001d:  ldc.i4     0x3685a
    IL_0022:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0027:  stfld      class [mscorlib]System.Collections.Generic.List`1<int32> DebuggingLibrary.Register::data
    IL_002c:  ldarg.0
    IL_002d:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0032:  ret
  } // end of method Register::.ctor

} // end of class DebuggingLibrary.Register


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file D:\epam-lab\workshopHM.Debugging\WorkshopHM.Day4.Debugging\DebuggingTest\bin\Debug\DebuggingLibrary.res
