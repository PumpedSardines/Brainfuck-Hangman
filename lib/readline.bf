[-][
  Readline code for entering the word to play with

  since i didn't want to write boolean logic i used this site:

  [ https://esolangs.org/wiki/Brainfuck_algorithms#x_.3D_x_-_y ]
]

+[
  ,
  Duplicate input
  [->+>+<<]>>
  [-<<+>>]


  { (i) | i }
  >>
  >++++++++[<++++++++++++>-]< 96 (one less than ascii a)
  >+++++[>+++++<-]>[<+++++>-]<-- 123 (one more than ascii z)
  { i | i | 96 | (123) }
  

  <<<< Take us to beginning input

  Duplicate input
  [->+>>>>+<<<<<]
  >>>>>[-<<<<<+>>>>>]<<

  { i | i | (96) | 123 | i}

  Bigger than module i bigger than 96
  | >>[-]
  | >[-] >[-]+ >[-] <<
  | <<<<<[>>>>+ >+ <<<<<-]
  | >>>>[<<<<+ >>>>-]
  | <<[>>+ <<-]+
  | >>>[>-]> [< <<<- >>[-] >>->]<+<
  | <[>- [>-]> [< <<<- >>[-]+ >>->]<+< <-]
  | [-]>[-]>[-]>[-]<<<

  { i | i | if bigger than 96 | 123 | (0) }

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
  #
  
  
  { i | (if corrent) }
  <-------------

  >[<+++++++++++++.
  Change this to edit under to edit the space between leters entered
  >->+>
  ]< This will take us to the original number if what we entered was wrong or it will take us to the next value
]