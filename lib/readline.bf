[-][
  Readline code for entering the word to play with

  since i didn't want to write boolean logic i used this site:

  [ https://esolangs.org/wiki/Brainfuck_algorithms#x_.3D_x_-_y ]

  For many functions

  This file is a bit all over the place...
  Was developed over time, and i don't remember how it works.
  These comments are wrong
]

+[
  ,
  ==Start by checking if it's enter
  Duplicate input
  [->+>+<<]>>
  [-<<+>>]


  { (i) | 0 | equals 10? }
  >
  this only runs if input wasn't enter
  >
  >++++++++[<++++++++++++>-]< 96 (one less than ascii a)
  >+++++[>+++++<-]>[<+++++>-]<-- 123 (one more than ascii z)
  

  <<<< Take us to beginning input

  Duplicate input
  [->+>>>>+<<<<<]
  >>>>>[-<<<<<+>>>>>]<<

  { i | i | equals 10? | (96) | 123}

  Bigger than module i bigger than 96
  | >>[-]
  | >[-] >[-]+ >[-] <<
  | <<<<<[>>>>+ >+ <<<<<-]
  | >>>>[<<<<+ >>>>-]
  | <<[>>+ <<-]+
  | >>>[>-]> [< <<<- >>[-] >>->]<+<
  | <[>- [>-]> [< <<<- >>[-]+ >>->]<+< <-]
  | [-]>[-]>[-]>[-]<<<

  { i | i | equals 10? | if bigger than 96 | 123 | (0) }

  < move to 123

  Bigger than module (123 bigger than i)
  | >[-]
  | >[-] >[-]+ >[-] <<
  | <<[>+ >+ <<-]
  | >[<+ >-]
  | <<<<[>>>>+ <<<<-]+
  | >>>>>[>-]> [< <<<<<- >>>>[-] >>->]<+<
  | <[>- [>-]> [< <<<<<- >>>>[-]+ >>->]<+< <-]
  | [-]>[-]>[-]>[-]<<<
  <[-] remove 123

  Equals than module on bigger and smaller
  <[-<<->>]+<<[>>-<<[-]]
  <[-]
  >>>[-<<<+>>>]<<<

  
  
  { i | (0) | 0 | 0 | if correct }
  <-------------

  >[<+++++++++++++.>>]<
]