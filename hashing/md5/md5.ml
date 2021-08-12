let remainingturns = input_line stdin


let append (value: string): string = value ^ "do stuff"

let bytes_toString (value: bytes): string = Bytes.to_string value


let append_bytes (value: string ): bytes = Bytes.of_string value




let () = print_endline (bytes_toString (append_bytes "Hello, Tim2!"))

