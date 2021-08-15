
let () =  let  bitList = Bit.string_to_bit_list (input_line stdin)  in 
            let appendingBits  = bitList @ Bit.need_append (Bit.count_bits (bitList)) in
             print_endline (Bit.bit_list_to_string appendingBits);