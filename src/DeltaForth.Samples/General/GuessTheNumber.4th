( --------------------------------------------------------------------
  File:     GuessTheNumber.4th
  Summary:  Simple game asking the user to guess a number
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

221 constant guess   \ This is the number to guess
variable NoTries

: main               \ Entry point
  0 NoTries !        \ Number of tries is initially 0
  ."Play the game. Guess a number!" cr
  begin
    NoTries @ 1+ NoTries !    \ Increment number of tries
    ."Type a number:"
    query            \ Expect at most 80 characters to the TIB area
    str2int          \ Convert characters to integer, if possible
    dup guess <>     \ Check for match
  while
    dup
    guess <
    if . ." is too small." else . ." is too big." then
    ." Try again..." cr
  repeat
  ."You guessed in " NoTries ? ." tries. Congratulations!" cr
;