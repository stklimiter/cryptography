open OUnit2
open Lib.Binary


let int_to_8_bit_test = "test suite for int to 8 bit" >::: [
  "1"  >:: (fun _ -> assert_equal [Zero ; Zero ; Zero ; Zero ; Zero ; Zero ; Zero ; One] (int_to_8_binary 1));
  "2"  >:: (fun _ -> assert_equal [Zero ; Zero ; Zero ; Zero ; Zero ; Zero ; One ; Zero  ] (int_to_8_binary 2));
  "3"  >:: (fun _ -> assert_equal [Zero ; Zero ; Zero ; Zero ; Zero ; Zero ; One ; One  ] (int_to_8_binary 3));
  "0"  >:: (fun _ -> assert_equal [Zero ; Zero ; Zero ; Zero ; Zero ; Zero ; Zero ; Zero  ] (int_to_8_binary 0));
  "128">:: (fun _ -> assert_equal [One ; Zero ; Zero ; Zero ; Zero ; Zero ; Zero ; Zero  ] (int_to_8_binary 128));
]

let int_to_bit_test = "test suite for int  bit" >::: [
  "1 in 8 bit"  >:: (fun _ -> assert_equal [Zero ; Zero ; Zero ; Zero ; Zero ; Zero ; Zero ; One] (int_to_binary 1 8));
  "1 in 4 bit"  >:: (fun _ -> assert_equal [Zero ; Zero ; Zero ; One] (int_to_binary 1 4));
  "1 in 2 bit"  >:: (fun _ -> assert_equal [Zero ; One] (int_to_binary 1 2));
]

let string_to_8_binary_test = "test suite for string to 8 bit binary" >::: [
  "A"  >:: (fun _ -> assert_equal [Zero ; One ; Zero ; Zero ; Zero ; Zero ; Zero ; One] (string_to_8_binary "A"));
  "AA"  >:: (fun _ -> assert_equal [Zero ; One ; Zero ; Zero ; Zero ; Zero ; Zero ; One; Zero ; One ; Zero ; Zero ; Zero ; Zero ; Zero ; One] (string_to_8_binary "AA"));
  "Hello World"  >:: (fun _ -> assert_equal [Zero;One;Zero;Zero;One;Zero;Zero;Zero;Zero;One;One;Zero;Zero;One;Zero;One;Zero;One;One;Zero;One;One;Zero;Zero;Zero;One;One;Zero;One;One;Zero;Zero;Zero;One;One;Zero;One;One;One;One;Zero;Zero;One;Zero;Zero;Zero;Zero;Zero;Zero;One;Zero;One;Zero;One;One;One;Zero;One;One;Zero;One;One;One;One;Zero;One;One;One;Zero;Zero;One;Zero;Zero;One;One;Zero;One;One;Zero;Zero;Zero;One;One;Zero;Zero;One;Zero;Zero;] (string_to_8_binary "Hello World"));
]

let run_all () = run_test_tt_main int_to_8_bit_test;
                 run_test_tt_main int_to_bit_test;
                 run_test_tt_main string_to_8_binary_test;
