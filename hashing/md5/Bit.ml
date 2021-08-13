let char_to_int (value: char list): int list =  List.map Char.code value

let split_on_char (value: string): char list = List.init (String.length value) (String.get value) 

let string_to_int_list (value: string): int list =  char_to_int (split_on_char value)

let rec int_to_bit_list_rec value boolList bitsLeft =     if (bitsLeft = 0) 
                                                            then boolList
                                                            else int_to_bit_list_rec (value  / 2 ) ([(value mod 2) = 1] @ boolList) (bitsLeft - 1)

let  int_to_bit_list value  =   int_to_bit_list_rec value [] 8

let rec string_list_to_string_rec stringList wholeString =      match stringList with
                                                     | [] -> wholeString
                                                     | head :: tail -> string_list_to_string_rec tail (wholeString ^ head ^ " ")

let  string_list_to_string list  =   string_list_to_string_rec list ""

let rec bool_list_to_string_rec boolList wholeString =  match boolList with
                                                     | [] -> wholeString
                                                     | head :: tail -> bool_list_to_string_rec tail (wholeString ^ (if (head) then "1" else "0"))

let bool_list_to_string list  =  bool_list_to_string_rec list ""

let bit_list_to_string listList = "bit code representation of your message: \n" ^ string_list_to_string (List.map bool_list_to_string listList)

let string_to_bit_list stringValue = let bit_list = (List.map int_to_bit_list (string_to_int_list stringValue)) in 
                                           print_endline (bit_list_to_string bit_list);
                                           bit_list

let sum l=
         match l with
        []->0
        |h::t-> h+. (sum t);;

let count_bits bitList = sum (List.map length bit_list)

let need_append bits = Printf.printf "Your message contains %d bit!" value
