let remainingturns = input_line stdin


let append (value: string): string = value ^ "do stuff"

let bytes_toString (value: bytes): string = Bytes.to_string value


let toBytes (value: string ): bytes = Bytes.of_string value

let get_byte_len (value: bytes): int = Bytes.length value

let printn (value: int) = Printf.printf "Your message contains %d bits!" value

let () = printn (get_byte_len (toBytes "testcode"))

