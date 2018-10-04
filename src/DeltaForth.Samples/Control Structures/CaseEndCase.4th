( --------------------------------------------------------------------
  File:     CaseEndCase.4th
  Summary:  Shows the use of the CASE-ENDCASE selector
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

: main         \ Entry point
  1 test cr    \ Test for 1
  2 test cr    \ Test for 2
  3 test cr    \ Test for 3
  4 test cr    \ Test for 4
;

: test
  case
  1 of ."One"   endof
  2 of ."Two"   endof
  3 of ."Three" endof
  ."Something else"
  endcase
;