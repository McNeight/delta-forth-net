( --------------------------------------------------------------------
  File:     Variables.4th
  Summary:  Shows the use of global and local variables
  --------------------------------------------------------------------
  This file is part of the DeltaForth Code Samples.

  Copyright © 2001, 2018 DeltaForth Contributors. All rights reserved.

  Licensed under the MIT license. See LICENSE file in the project root
  for full license information.
  -------------------------------------------------------------------- )

variable a     \ First variable
variable b     \ Second variable
variable tab 1 allot \ Holds the sum and the product of 'a' and 'b'

: main         \ Entry point
  initialize   \ Initialize variables
  sum          \ Computes the sum and stores the result in tab[0]
  product      \ Computes the sum and stores the result in tab[1]
  display      \ Displays the operation summary
;

: initialize
  10 a !       \ Initialize 'a' with 10
  20 b !       \ Initialize 'b' with 20
;

: sum
  a @ b @
  +            \ Compute sum of 'a' and 'b'
  tab !        \ Store result in tab[0]
;

: product
  a @ b @
  *            \ Compute product of 'a' and 'b'
  tab 1+ !     \ Store result in tab[1]
;

: display
  variable s   \ Local variable to hold the sum
  variable p   \ Local variable to hold the product
  tab @ s !    \ Store sum to 's'
  tab 1+ @ p ! \ Store product to 'p'
  ."The sum is " s ? ." and the product is " p ? cr
;