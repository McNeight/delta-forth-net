( --------------------------------------------------------------------
  File:     LeapYears.4th
  Summary:  Counts the number of leap years between two specified
      years
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

1901 constant StartYear
2030 constant EndYear

variable leapyears

: CheckYears
  StartYear EndYear > 0=
;

: Leap
  0 LeapYears !
  EndYear StartYear
  do
    i 4 mod 0=
    if 1 LeapYears +!
    then
  loop
;

: main   \ Entry point
  CheckYears
  if Leap
     ."There are " LeapYears ? ." leap years between "
     StartYear . ." and " EndYear . ."."
  else
     ."Error, the start year is past the end year."
  then
;