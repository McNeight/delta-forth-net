( --------------------------------------------------------------------
  File:     Constants.4th
  Summary:  Shows the use of integer and string constants
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

30 constant cint1             \ Integer constant
76 constant cint2             \ Integer constant
"The sum is: " constant cstr  \ String constant

: main               \ Entry point
  tib cstr           \ Dumps the text in 'cstr' to the address pointed by TIB
  tib dup count type \ Types the text at TIB
  cint1 cint2 +      \ Computes the constant sum
  .                  \ Displays the sum
;