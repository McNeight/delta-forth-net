( --------------------------------------------------------------------
  File:     DoLoop.4th
  Summary:  Shows the use of the DO-LOOP loop
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

: main   \ Entry point
  25     \ Final value
  0      \ Initial value
  do
    i . space
  loop
;