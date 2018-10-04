( --------------------------------------------------------------------
  File:     Euclid.4th
  Summary:  Computes the greatest common divider using
      Euclid's algorithm
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

4330  constant num1  \ The first number
8235  constant num2  \ The second number

( Word to test if value on top of stack is equal to or less than 0 )
: ZeroLessEqual
  dup 0=
  swap 0<
  or
;

: gcd    (num1 num2 - - -)
  over ZeroLessEqual
  if     (num1 is <= 0)
    drop drop
  else
    dup ZeroLessEqual
    if      (num2 is <= 0)
      drop drop
    else
      begin
      over over =
      if (We've got the result)
        .
      else
        over over >
        if
          swap
        then
        over - 0
      then
      until
    then
  then
;

: main      \ Entry point
  ."GCD of " num1 . ." and " num2 . ." is " num1 num2 gcd cr
;