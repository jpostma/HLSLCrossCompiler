//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
//   fxc /T vs_4_0 /Fo shift.o /Fc shift.asm shift
//
//
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   int ShiftValue;                    // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// $Globals                          cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// POSITION                 0   xyzw        0     NONE  float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_Position              0   xyzw        0      POS  float   xyzw
// COLOR                    0   xyzw        1     NONE  float   xyzw
//
vs_4_0
dcl_constantbuffer cb0[1], immediateIndexed
dcl_input v0.xyzw
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_temps 1
mov o0.xyzw, v0.xyzw
ishl r0.x, l(1), cb0[0].x
itof o1.y, r0.x
ushr r0.x, l(1), cb0[0].x
itof o1.z, r0.x
mov o1.xw, l(1.000000,0,0,1.000000)
ret 
// Approximately 7 instruction slots used
