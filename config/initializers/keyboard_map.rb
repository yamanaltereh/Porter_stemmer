
StemmerDistanceWords::Application.configure do

  config.row_keyboard = {
    "`" => 0 , "1" => 0, "2" => 0, "3" => 0 , "4" => 0 , "5" => 0 , "6" => 0 , "7" => 0 , "8" => 0 , "9" => 0 , "0" => 0 ,"-" => 0 , "=" => 0 ,

     "q" => 1 , "w" => 1 , "e"=> 1 , "r"=> 1 , "t"=> 1 , "y"=> 1 , "u"=> 1 , "i"=> 1 , "o"=> 1 ,"p"=> 1 ,"["=> 1 ,"]"=> 1 ,"'\'" => 1 , 

     "a"=> 2 ,"s"=> 2 ,"d"=> 2 ,"f"=> 2 ,"g"=> 2 ,"h"=> 2 ,"j"=> 2 ,"k"=> 2 ,"l"=> 2 ,";" => 2 ,"'"=> 2 ,

     "z"=> 3 ,"x"=> 3 ,"c"=> 3 ,"v"=> 3 ,"b"=> 3 ,"n"=> 3 ,"m"=> 3 ,","=> 3 ,"."=> 3 ,"/" => 3 ,
  

    "`".upcase => 0 , "1".upcase => 0, "2".upcase => 0, "3".upcase => 0 , "4".upcase => 0 , "5".upcase => 0 , "6".upcase => 0 , "7".upcase => 0 , "8".upcase => 0 , "9".upcase => 0 , "0".upcase => 0 ,"-".upcase => 0 , "=".upcase => 0 ,

     "q".upcase => 1 , "w".upcase => 1 , "e".upcase => 1 , "r".upcase => 1 , "t".upcase => 1 , "y".upcase => 1 , "u".upcase => 1 , "i".upcase => 1 , "o".upcase => 1 ,"p".upcase => 1 ,"[".upcase => 1 ,"]".upcase => 1 ,"'\'".upcase => 1 , 

     "a".upcase => 2 ,"s".upcase => 2 ,"d".upcase => 2 ,"f".upcase => 2 ,"g".upcase => 2 ,"h".upcase => 2 ,"j".upcase => 2 ,"k".upcase => 2 ,"l".upcase => 2 ,";".upcase => 2 ,"'".upcase => 2 ,

     "z".upcase => 3 ,"x".upcase => 3 ,"c".upcase => 3 ,"v".upcase => 3 ,"b".upcase => 3 ,"n".upcase => 3 ,"m".upcase => 3 , ",".upcase => 3 ,".".upcase => 3 ,"/".upcase => 3 
  }

  config.column_keyborad = {
    "`" => 0 , "1" => 1, "2" => 2, "3" => 3 , "4" => 4 , "5" => 5 , "6" => 6 , "7" => 7 , "8" => 8 , "9" => 9 , "0" => 10 ,"-" => 11 , "=" => 12 ,

     "q" => 1 , "w" => 2 , "e"=> 3 , "r"=> 4 , "t"=> 5 , "y"=> 6 , "u"=> 7 , "i"=> 8 , "o"=> 9 ,"p"=> 10 ,"["=> 11 ,"]"=> 12 ,"'\'" => 13 , 

     "a"=> 1 ,"s"=> 2 ,"d"=> 3 ,"f"=> 4 ,"g"=> 5 ,"h"=> 6 ,"j"=> 7 ,"k"=> 8 ,"l"=> 9 ,";" => 10 ,"'"=> 11 ,

     "z"=> 1 ,"x"=> 2 ,"c"=> 3 ,"v"=> 4 ,"b"=> 5 ,"n"=> 6 ,"m"=> 7 ,","=> 8 ,"."=> 9 ,"/" => 10,


     "`".upcase => 0 , "1".upcase => 1, "2".upcase => 2, "3".upcase => 3 , "4".upcase => 4 , "5".upcase => 5 , "6".upcase => 6 , "7".upcase => 7 , "8".upcase => 8 , "9".upcase => 9 , "0".upcase => 10 ,"-".upcase => 11 , "=".upcase => 12 ,

     "q".upcase => 1 , "w".upcase => 2 , "e".upcase => 3 , "r".upcase => 4 , "t".upcase => 5 , "y".upcase => 6 , "u".upcase => 7 , "i".upcase => 8 , "o".upcase => 9 ,"p".upcase => 10 ,"[".upcase => 11 ,"]".upcase => 12 ,"'\'".upcase => 13 , 

     "a".upcase => 1 ,"s".upcase => 2 ,"d".upcase => 3 ,"f".upcase => 4 ,"g".upcase => 5 ,"h".upcase => 6 ,"j".upcase => 7 ,"k".upcase => 8 ,"l".upcase => 9 , ";".upcase => 10 ,"'".upcase => 11 ,

     "z".upcase => 1 ,"x".upcase => 2 ,"c".upcase => 3 ,"v".upcase => 4 ,"b".upcase => 5 ,"n".upcase => 6 ,"m".upcase => 7 ,",".upcase => 8 ,".".upcase => 9 ,"/".upcase => 10
  }


#    | 0   1   2   3   4   5   6   7   8   9   10  11  12  13
#  --+---+---+---+---+---+---+---+---+---+---+---+---+---+---+
#  0 | ` | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | - | = |   |
#  1 |   | q | w | e | r | t | y | u | i | o | p | [ | ] | \ |
#  2 |   | a | s | d | f | g | h | j | k | l | ; | ' |   |   |
#  3 |   | z | x | c | v | b | n | m | , | . | / |   |   |   |
#  --+---+---+---+---+---+---+---+---+---+---+---+---+---+---+

end