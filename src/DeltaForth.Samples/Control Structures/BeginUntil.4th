( --------------------------------------------------------------------
  File:     BeginUntil.4th
  Summary:  Shows the use of the BEGIN-UNTIL loop
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

: main               \ Entry point
  variable cnt       \ Local variable
  0 cnt !            \ Initialize 'cnt' to 0
  begin
    cnt @ 1+ cnt !   \ Increment variable by 1
    cnt ? space      \ Display the counter value
    cnt @ 25 >       \ Test if the counter is less than 25
  until
;