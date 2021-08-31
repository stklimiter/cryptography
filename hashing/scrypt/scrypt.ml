(* Function scrypt
   Inputs: This algorithm includes the following parameters:
      Passphrase:                Bytes    string of characters to be hashed
      Salt:                      Bytes    string of random characters that modifies the hash to protect against Rainbow table attacks
      CostFactor (N):            Integer  CPU/memory cost parameter - Must be a power of 2 (e.g. 1024)
      BlockSizeFactor (r):       Integer  blocksize parameter, which fine-tunes sequential memory read size and performance. (8 is commonly used)
      ParallelizationFactor (p): Integer  Parallelization parameter. (1 .. 232-1 * hLen/MFlen)
      DesiredKeyLen (dkLen):     Integer  Desired key length in bytes (Intended output length in octets of the derived key; a positive integer satisfying dkLen ≤ (232− 1) * hLen.)
      hLen:                      Integer  The length in octets of the hash function (32 for SHA256).
      MFlen:                     Integer  The length in octets of the output of the mixing function (SMix below). Defined as r * 128 in RFC7914.
   Output:
      DerivedKey:                Bytes    array of bytes, DesiredKeyLen long *)



(* CPU/memory cost parameter - Must be a power of 2 (e.g. 1024) *)
(* (N) *)
let default_costfactor = 1024

(* blocksize parameter, which fine-tunes sequential memory read size and performance. (8 is commonly used) *)
(* (r) *)
let default_blocksize = 8

(* (p) *)
(* Parallelization parameter. (1 .. 232-1 * hLen/MFlen) *)
let default_parallelization_factor = 2

(* (dkLen) *)
(* Desired key length in bytes (Intended output length in octets of the derived key; a positive integer satisfying dkLen ≤ (232− 1) * hLen.) *)
let default_desired_key_len = 232

(* The length in octets of the hash function (32 for SHA256). *)
let default_hLen = 32

(* The length in octets of the output of the mixing function (SMix below). Defined as r * 128 in RFC7914. *)
let default_MFLen = 128 * default_blocksize

let blockSize blocksizeFactor = blocksizeFactor * 128

let _ = print_endline "input passphrase";
        let pass_phrase = input_line stdin in
            print_endline "input salt";
            let salt = input_line stdin in  
             print_endline (salt ^ pass_phrase)

let scrypt passphrase salt = print_endline (passphrase ^ salt)

