(* 
let append (value: string): string = value ^ "do stuff";

let bytes_toString (value: bytes): string = Bytes.to_string value;


let toBytes (value: string ): bytes = Bytes.of_string value;
 

let get_bit_len (value: bytes): int = Bytes.length value * 8;

let printn (value: int) = Printf.printf "Your message contains %d bit!" value;
*)

let split_on_char (value: string): char list = List.init (String.length value) (String.get value) 

let char_to_int (value: char list): int list =  List.map Char.code value

let string_to_int_list (value: string): int list =  char_to_int (split_on_char value)




let rec int_to_bit_list value boolList bitsLeft =   if (bitsLeft = 0) 
                                                     then boolList
                                                     else int_to_bit_list (value  / 2 ) ([(value mod 2) = 1] @ boolList) (bitsLeft - 1)

let print_bool (value: bool) = 
                                if (value) then Printf.printf "1" else Printf.printf "0"

let rec do_all f lst =
match lst with
| [] -> ()
| x :: xs -> f x; do_all f xs

let print_bool_list (value: bool list) = do_all print_bool value




let rec print_int_list (intList: int list) =
                                            match intList with
                                            | [] -> ()
                                            | x :: xs -> Printf.printf "int: %d  \n" x; print_int_list xs
(* type 'a loggable: 'a -> ('a, string) *)




let get_list: bool list = int_to_bit_list 8 [] 8

(* let () = print_bool_list get_list *)

let fn1 a: string = a ^ "1"
let fn2 b: string = b ^ "2"
let fn3 c: string = c ^ "3"
let fn4 d: string = d ^ "4"

let print_it (value: string) = print_endline value

let () = print_it ((Compose.compose [fn1;fn2]) "0")
