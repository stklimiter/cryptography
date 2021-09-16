include Lib.Binary

(*create a tuple, containing the orginal size of the msg*)
let with_orginal_size l = (l, size l)

(*Append a one*)
let append_one (ls, sz) = (ls @ [One], sz)

(*find out the amount of bits one needs to appended*)
let need_append bits =  let bitMod = bits mod 512 in
                           (if (bitMod > 447) then (512 + 448) else 448) - bitMod

(*append zeros to the end of a binary*)
let append_zero_to_binary ls sz =  ls @ (int_to_binary 0 (need_append sz))

(*append zeros to the end of a binary inside a (ls, size)*)
let append_zeros (ls, sz) = (append_zero_to_binary ls sz, sz)

(*appends the sz, to the end of ls (in 64 bit)*)
let append_size (ls, sz) = ls @ (int_to_binary sz 64)

let pre_process value =  string_to_8_binary value |> with_orginal_size |> append_one |> append_zeros |> append_size

