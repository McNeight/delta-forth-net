( --------------------------------------------------------------------
  File:     IfElseThen.4th
  Summary:  Shows the use of the IF-ELSE-THEN structure
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

10 constant num

: main      \ Entry point

  num 2 mod \ Remainder of division by 2
  num .     \ Display constant
  if ." is an odd number" else ." is an even number" then

;