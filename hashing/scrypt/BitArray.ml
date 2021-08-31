
(* type Bit = Zero | One

type Bit_array = 
            | []
            | Bit::bit_array




let rec print_byte_array byte_array = match byte_array with
                                    | [] -> Unit
                                    | head :: tail -> printByte head; print_byte_array tail; *)






(* let rec int_to_bit_list_rec value bit_array bitsLeft =     if (bitsLeft = 0) 
                                                             then boolList
                                                             else int_to_bit_list_rec (value  / 2 ) ([if (value mod 2) = 1] then One else Zero @ boolList) (bitsLeft - 1)

let  int_to_bit_list int_value  =   int_to_bit_list_rec int_value [] 8

let char_to_bit_array value = Char.code value |>

let string_to_byte value = Bytes.of_string value *)

type bit = Zero | One

type bitList = bit list 

let to_int = function 
                     | One -> 1
                     | Zero -> 0

let to_string = function 
                     | One -> "1"
                     | Zero -> "0"

let print_bit bit =  bit |> to_int  |> print_int 

let rec print_byte_array = function
                                    | [] -> ()
                                    | head :: tail -> print_bit head; print_byte_array tail


let rec int_to_bitList' value bitList bitsLeft =     if (bitsLeft = 0) 
                                                            then bitList
                                                            else int_to_bitList' (value  / 2 ) ([if ((value mod 2) = 1) then One else Zero] @ bitList) (bitsLeft - 1)
let int_to_bitList int = int_to_bitList' int [] 8

let int_list_to_bitList int_list = List.map int_to_bitList int_list |> List.flatten 

let split_on_char (value: string): char list = List.init (String.length value) (String.get value) 

let char_to_int (value: char list): int list =  List.map Char.code value

let string_to_int_list (value: string): int list =  char_to_int (split_on_char value)

let string_to_bitList value = value |> string_to_int_list |> int_list_to_bitList



