Program reversing
=================


this folder contains the reversing of the main program (user interface).

Here we can find the different request codes sent to the scope, for config
purpose. E.g setting the time base or the voltage ranges.


## 01_raw_disassembly

This folder contains the raw C# project, as return by the ILspy utility.


## 02_request_codes

This folder contains the code relevant to the control codes sent to the scope.
This has been extracted form the folder above, but with edited code.

Editions done to code:
- Remove stuff non-relevant to the current function
- Remove UI-related code
- Remove other specificities (e.g locks when calling USB routines)
- Move to separate functions redundant code (in this case, thge function name is
  alway in uppercase)
