let _ = let bitList = Bit.string_to_bit_list (input_line stdin)  in
            let appendingBits  =  bitList |> Bit.count_bits |> (bitList @ Bit.need_append) in
                appendingBits |> Bit.bit_list_to_string |> print_endline;