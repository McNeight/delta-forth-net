( --------------------------------------------------------------------
  File:     PrimeNumbers.4th
  Summary:  Displays the prime numbers up to a specified limit
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

400 constant limit

: isprime   \ Returns 1 if the number on top of stack is a prime number
  2
  begin
    over over mod 0= 0=
    rot rot dup >r
    over 2 / > 0=
    rot and r> swap
  while
    1+
  repeat
  over 2 / >
;

: main      \ Entry point
  ."Prime numbers up to " limit . .": "
  limit 1 do
          i isprime
          if i . space then
     loop
;