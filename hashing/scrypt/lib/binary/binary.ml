type bit = Zero | One

type binary = bit list

let boolToBit bool = match bool with
                       | true -> One
                       | false -> Zero


(*ints -> binary functions *)
let rec int_to_binary' value boolList bitsLeft =   if (bitsLeft = 0)
                                                            then boolList
                                                            else int_to_binary' (value  / 2 ) ( [(boolToBit ((value mod 2) = 1))] @ boolList) (bitsLeft - 1)

let int_to_binary value bit =  int_to_binary' value [] bit

let int_to_8_binary value  =  int_to_binary value 8

(*string -> binary functions *)
(*let char_to_binary char = int_to_8_binary (Char.code char)*)

let char_to_int (value: char list): int list =  List.map Char.code value

let split_on_char (value: string): char list = List.init (String.length value) (String.get value)

let string_to_int_list (value: string): int list =  char_to_int (split_on_char value)

let string_to_8_binary string = List.flatten (List.map int_to_8_binary (string_to_int_list string))

let size n = List.length n