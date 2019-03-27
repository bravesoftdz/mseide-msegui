unit datatypeform_mfm;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}

interface

implementation
uses
 mseclasses,datatypeform;

const
 objdata: record size: integer; data: array[0..1757] of byte end =
      (size: 1758; data: (
  84,80,70,48,11,116,100,97,116,97,116,121,112,101,102,111,10,100,97,116,
  97,116,121,112,101,102,111,7,118,105,115,105,98,108,101,8,8,98,111,117,
  110,100,115,95,120,3,150,1,8,98,111,117,110,100,115,95,121,3,19,1,
  9,98,111,117,110,100,115,95,99,120,3,235,1,9,98,111,117,110,100,115,
  95,99,121,2,105,26,99,111,110,116,97,105,110,101,114,46,102,114,97,109,
  101,46,108,111,99,97,108,112,114,111,112,115,11,0,27,99,111,110,116,97,
  105,110,101,114,46,102,114,97,109,101,46,108,111,99,97,108,112,114,111,112,
  115,49,11,0,16,99,111,110,116,97,105,110,101,114,46,98,111,117,110,100,
  115,1,2,0,2,0,3,235,1,2,105,0,7,111,112,116,105,111,110,115,
  11,17,102,111,95,115,99,114,101,101,110,99,101,110,116,101,114,101,100,15,
  102,111,95,97,117,116,111,114,101,97,100,115,116,97,116,16,102,111,95,97,
  117,116,111,119,114,105,116,101,115,116,97,116,10,102,111,95,115,97,118,101,
  112,111,115,13,102,111,95,115,97,118,101,122,111,114,100,101,114,12,102,111,
  95,115,97,118,101,115,116,97,116,101,0,7,99,97,112,116,105,111,110,6,
  11,69,120,112,111,114,116,97,116,105,111,110,13,119,105,110,100,111,119,111,
  112,97,99,105,116,121,5,0,0,0,0,0,0,0,128,255,255,15,109,111,
  100,117,108,101,99,108,97,115,115,110,97,109,101,6,8,116,109,115,101,102,
  111,114,109,0,9,116,103,114,111,117,112,98,111,120,10,116,103,114,111,117,
  112,98,111,120,49,13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,
  14,70,105,101,108,100,115,32,116,111,32,115,97,118,101,16,102,114,97,109,
  101,46,108,111,99,97,108,112,114,111,112,115,11,0,17,102,114,97,109,101,
  46,108,111,99,97,108,112,114,111,112,115,49,11,0,16,102,114,97,109,101,
  46,111,117,116,101,114,102,114,97,109,101,1,2,0,2,7,2,0,2,0,
  0,8,98,111,117,110,100,115,95,120,2,24,8,98,111,117,110,100,115,95,
  121,2,9,9,98,111,117,110,100,115,95,99,120,3,186,1,9,98,111,117,
  110,100,115,95,99,121,2,57,0,17,116,98,111,111,108,101,97,110,101,100,
  105,116,114,97,100,105,111,5,97,108,108,98,111,13,102,114,97,109,101,46,
  99,97,112,116,105,111,110,6,4,65,108,108,32,16,102,114,97,109,101,46,
  108,111,99,97,108,112,114,111,112,115,11,0,17,102,114,97,109,101,46,108,
  111,99,97,108,112,114,111,112,115,49,11,0,16,102,114,97,109,101,46,111,
  117,116,101,114,102,114,97,109,101,1,2,0,2,1,2,21,2,2,0,8,
  98,111,117,110,100,115,95,120,2,48,8,98,111,117,110,100,115,95,121,2,
  26,9,98,111,117,110,100,115,95,99,120,2,34,9,98,111,117,110,100,115,
  95,99,121,2,16,7,111,112,116,105,111,110,115,11,17,98,111,95,101,120,
  101,99,117,116,101,111,110,99,108,105,99,107,15,98,111,95,101,120,101,99,
  117,116,101,111,110,107,101,121,20,98,111,95,101,120,101,99,117,116,101,111,
  110,115,104,111,114,116,99,117,116,27,98,111,95,101,120,101,99,117,116,101,
  100,101,102,97,117,108,116,111,110,101,110,116,101,114,107,101,121,12,98,111,
  95,114,97,100,105,111,105,116,101,109,0,5,118,97,108,117,101,9,0,0,
  17,116,98,111,111,108,101,97,110,101,100,105,116,114,97,100,105,111,5,116,
  120,116,98,111,13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,14,
  82,111,111,116,32,116,101,120,116,32,111,110,108,121,16,102,114,97,109,101,
  46,108,111,99,97,108,112,114,111,112,115,11,0,17,102,114,97,109,101,46,
  108,111,99,97,108,112,114,111,112,115,49,11,0,16,102,114,97,109,101,46,
  111,117,116,101,114,102,114,97,109,101,1,2,0,2,1,2,87,2,2,0,
  8,116,97,98,111,114,100,101,114,2,1,8,98,111,117,110,100,115,95,120,
  3,56,1,8,98,111,117,110,100,115,95,121,2,26,9,98,111,117,110,100,
  115,95,99,120,2,100,9,98,111,117,110,100,115,95,99,121,2,16,7,111,
  112,116,105,111,110,115,11,17,98,111,95,101,120,101,99,117,116,101,111,110,
  99,108,105,99,107,15,98,111,95,101,120,101,99,117,116,101,111,110,107,101,
  121,20,98,111,95,101,120,101,99,117,116,101,111,110,115,104,111,114,116,99,
  117,116,27,98,111,95,101,120,101,99,117,116,101,100,101,102,97,117,108,116,
  111,110,101,110,116,101,114,107,101,121,12,98,111,95,114,97,100,105,111,105,
  116,101,109,0,0,0,17,116,98,111,111,108,101,97,110,101,100,105,116,114,
  97,100,105,111,7,116,120,116,116,114,98,111,13,102,114,97,109,101,46,99,
  97,112,116,105,111,110,6,22,82,111,111,116,32,116,101,120,116,32,43,32,
  116,114,97,100,117,99,116,105,111,110,16,102,114,97,109,101,46,108,111,99,
  97,108,112,114,111,112,115,11,0,17,102,114,97,109,101,46,108,111,99,97,
  108,112,114,111,112,115,49,11,0,16,102,114,97,109,101,46,111,117,116,101,
  114,102,114,97,109,101,1,2,0,2,1,3,139,0,2,2,0,8,116,97,
  98,111,114,100,101,114,2,2,8,98,111,117,110,100,115,95,120,3,128,0,
  8,98,111,117,110,100,115,95,121,2,26,9,98,111,117,110,100,115,95,99,
  120,3,152,0,9,98,111,117,110,100,115,95,99,121,2,16,7,111,112,116,
  105,111,110,115,11,17,98,111,95,101,120,101,99,117,116,101,111,110,99,108,
  105,99,107,15,98,111,95,101,120,101,99,117,116,101,111,110,107,101,121,20,
  98,111,95,101,120,101,99,117,116,101,111,110,115,104,111,114,116,99,117,116,
  27,98,111,95,101,120,101,99,117,116,101,100,101,102,97,117,108,116,111,110,
  101,110,116,101,114,107,101,121,12,98,111,95,114,97,100,105,111,105,116,101,
  109,0,0,0,0,7,116,98,117,116,116,111,110,8,116,98,117,116,116,111,
  110,49,8,116,97,98,111,114,100,101,114,2,1,8,98,111,117,110,100,115,
  95,120,3,216,0,8,98,111,117,110,100,115,95,121,2,75,9,98,111,117,
  110,100,115,95,99,120,2,50,9,98,111,117,110,100,115,95,99,121,2,25,
  5,115,116,97,116,101,11,15,97,115,95,108,111,99,97,108,99,97,112,116,
  105,111,110,17,97,115,95,108,111,99,97,108,111,110,101,120,101,99,117,116,
  101,0,7,99,97,112,116,105,111,110,6,3,38,79,107,9,111,110,101,120,
  101,99,117,116,101,7,14,111,110,101,120,101,99,100,97,116,97,116,121,112,
  101,0,0,7,116,98,117,116,116,111,110,8,116,98,117,116,116,111,110,50,
  16,102,114,97,109,101,46,108,111,99,97,108,112,114,111,112,115,11,0,17,
  102,114,97,109,101,46,108,111,99,97,108,112,114,111,112,115,49,11,0,8,
  116,97,98,111,114,100,101,114,2,2,8,98,111,117,110,100,115,95,120,3,
  32,1,8,98,111,117,110,100,115,95,121,2,75,9,98,111,117,110,100,115,
  95,99,120,2,50,9,98,111,117,110,100,115,95,99,121,2,25,5,115,116,
  97,116,101,11,12,97,115,95,105,110,118,105,115,105,98,108,101,17,97,115,
  95,108,111,99,97,108,105,110,118,105,115,105,98,108,101,15,97,115,95,108,
  111,99,97,108,99,97,112,116,105,111,110,17,97,115,95,108,111,99,97,108,
  111,110,101,120,101,99,117,116,101,0,7,99,97,112,116,105,111,110,6,7,
  38,67,97,110,99,101,108,9,111,110,101,120,101,99,117,116,101,7,16,111,
  110,99,97,110,99,101,108,100,97,116,97,116,121,112,101,0,0,0)
 );

initialization
 registerobjectdata(@objdata,tdatatypefo,'');
end.
