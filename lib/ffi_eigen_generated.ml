module CI = Cstubs_internals

external owl_stub_1_c_eigen_spmat_d_new : int -> int -> CI.voidp
  = "owl_stub_1_c_eigen_spmat_d_new" 

external owl_stub_2_c_eigen_spmat_d_delete : _ CI.fatptr -> unit
  = "owl_stub_2_c_eigen_spmat_d_delete" 

external owl_stub_3_c_eigen_spmat_d_eye : int -> CI.voidp
  = "owl_stub_3_c_eigen_spmat_d_eye" 

external owl_stub_4_c_eigen_spmat_d_rows : _ CI.fatptr -> int
  = "owl_stub_4_c_eigen_spmat_d_rows" 

external owl_stub_5_c_eigen_spmat_d_cols : _ CI.fatptr -> int
  = "owl_stub_5_c_eigen_spmat_d_cols" 

external owl_stub_6_c_eigen_spmat_d_nnz : _ CI.fatptr -> int
  = "owl_stub_6_c_eigen_spmat_d_nnz" 

external owl_stub_7_c_eigen_spmat_d_get : _ CI.fatptr -> int -> int -> float
  = "owl_stub_7_c_eigen_spmat_d_get" 

external owl_stub_8_c_eigen_spmat_d_set
  : _ CI.fatptr -> int -> int -> float -> unit
  = "owl_stub_8_c_eigen_spmat_d_set" 

external owl_stub_9_c_eigen_spmat_d_reset : _ CI.fatptr -> unit
  = "owl_stub_9_c_eigen_spmat_d_reset" 

external owl_stub_10_c_eigen_spmat_d_is_compressed : _ CI.fatptr -> int
  = "owl_stub_10_c_eigen_spmat_d_is_compressed" 

external owl_stub_11_c_eigen_spmat_d_compress : _ CI.fatptr -> unit
  = "owl_stub_11_c_eigen_spmat_d_compress" 

external owl_stub_12_c_eigen_spmat_d_uncompress : _ CI.fatptr -> unit
  = "owl_stub_12_c_eigen_spmat_d_uncompress" 

external owl_stub_13_c_eigen_spmat_d_reshape
  : _ CI.fatptr -> int -> int -> unit = "owl_stub_13_c_eigen_spmat_d_reshape" 

external owl_stub_14_c_eigen_spmat_d_clone : _ CI.fatptr -> CI.voidp
  = "owl_stub_14_c_eigen_spmat_d_clone" 

external owl_stub_15_c_eigen_spmat_d_row : _ CI.fatptr -> int -> CI.voidp
  = "owl_stub_15_c_eigen_spmat_d_row" 

external owl_stub_16_c_eigen_spmat_d_col : _ CI.fatptr -> int -> CI.voidp
  = "owl_stub_16_c_eigen_spmat_d_col" 

external owl_stub_17_c_eigen_spmat_d_transpose : _ CI.fatptr -> CI.voidp
  = "owl_stub_17_c_eigen_spmat_d_transpose" 

external owl_stub_18_c_eigen_spmat_d_adjoint : _ CI.fatptr -> CI.voidp
  = "owl_stub_18_c_eigen_spmat_d_adjoint" 

external owl_stub_19_c_eigen_spmat_d_add
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "owl_stub_19_c_eigen_spmat_d_add" 

external owl_stub_20_c_eigen_spmat_d_sub
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "owl_stub_20_c_eigen_spmat_d_sub" 

external owl_stub_21_c_eigen_spmat_d_mul
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "owl_stub_21_c_eigen_spmat_d_mul" 

external owl_stub_22_c_eigen_spmat_d_div
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "owl_stub_22_c_eigen_spmat_d_div" 

external owl_stub_23_c_eigen_spmat_d_dot
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "owl_stub_23_c_eigen_spmat_d_dot" 

external owl_stub_24_c_eigen_spmat_d_mul_scalar
  : _ CI.fatptr -> float -> CI.voidp
  = "owl_stub_24_c_eigen_spmat_d_mul_scalar" 

external owl_stub_25_c_eigen_spmat_d_div_scalar
  : _ CI.fatptr -> float -> CI.voidp
  = "owl_stub_25_c_eigen_spmat_d_div_scalar" 

external owl_stub_26_c_eigen_spmat_d_min2
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "owl_stub_26_c_eigen_spmat_d_min2" 

external owl_stub_27_c_eigen_spmat_d_max2
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "owl_stub_27_c_eigen_spmat_d_max2" 

external owl_stub_28_c_eigen_spmat_d_abs : _ CI.fatptr -> CI.voidp
  = "owl_stub_28_c_eigen_spmat_d_abs" 

external owl_stub_29_c_eigen_spmat_d_sqrt : _ CI.fatptr -> CI.voidp
  = "owl_stub_29_c_eigen_spmat_d_sqrt" 

external owl_stub_30_c_eigen_spmat_d_print : _ CI.fatptr -> unit
  = "owl_stub_30_c_eigen_spmat_d_print" 

type 'a result = 'a
type 'a return = 'a
type 'a fn =
 | Returns  : 'a CI.typ   -> 'a return fn
 | Function : 'a CI.typ * 'b fn  -> ('a -> 'b) fn
let map_result f x = f x
let returning t = Returns t
let (@->) f p = Function (f, p)
let foreign : type a b. string -> (a -> b) fn -> (a -> b) =
  fun name t -> match t, name with
| Function (CI.Pointer x2, Returns CI.Void), "c_eigen_spmat_d_print" ->
  (fun x1 -> owl_stub_30_c_eigen_spmat_d_print (CI.cptr x1))
| Function (CI.Pointer x4, Returns (CI.Pointer x5)), "c_eigen_spmat_d_sqrt" ->
  (fun x3 -> CI.make_ptr x5 (owl_stub_29_c_eigen_spmat_d_sqrt (CI.cptr x3)))
| Function (CI.Pointer x7, Returns (CI.Pointer x8)), "c_eigen_spmat_d_abs" ->
  (fun x6 -> CI.make_ptr x8 (owl_stub_28_c_eigen_spmat_d_abs (CI.cptr x6)))
| Function
    (CI.Pointer x10, Function (CI.Pointer x12, Returns (CI.Pointer x13))),
  "c_eigen_spmat_d_max2" ->
  (fun x9 x11 ->
    CI.make_ptr x13
      (owl_stub_27_c_eigen_spmat_d_max2 (CI.cptr x9) (CI.cptr x11)))
| Function
    (CI.Pointer x15, Function (CI.Pointer x17, Returns (CI.Pointer x18))),
  "c_eigen_spmat_d_min2" ->
  (fun x14 x16 ->
    CI.make_ptr x18
      (owl_stub_26_c_eigen_spmat_d_min2 (CI.cptr x14) (CI.cptr x16)))
| Function
    (CI.Pointer x20,
     Function (CI.Primitive CI.Double, Returns (CI.Pointer x22))),
  "c_eigen_spmat_d_div_scalar" ->
  (fun x19 x21 ->
    CI.make_ptr x22
      (owl_stub_25_c_eigen_spmat_d_div_scalar (CI.cptr x19) x21))
| Function
    (CI.Pointer x24,
     Function (CI.Primitive CI.Double, Returns (CI.Pointer x26))),
  "c_eigen_spmat_d_mul_scalar" ->
  (fun x23 x25 ->
    CI.make_ptr x26
      (owl_stub_24_c_eigen_spmat_d_mul_scalar (CI.cptr x23) x25))
| Function
    (CI.Pointer x28, Function (CI.Pointer x30, Returns (CI.Pointer x31))),
  "c_eigen_spmat_d_dot" ->
  (fun x27 x29 ->
    CI.make_ptr x31
      (owl_stub_23_c_eigen_spmat_d_dot (CI.cptr x27) (CI.cptr x29)))
| Function
    (CI.Pointer x33, Function (CI.Pointer x35, Returns (CI.Pointer x36))),
  "c_eigen_spmat_d_div" ->
  (fun x32 x34 ->
    CI.make_ptr x36
      (owl_stub_22_c_eigen_spmat_d_div (CI.cptr x32) (CI.cptr x34)))
| Function
    (CI.Pointer x38, Function (CI.Pointer x40, Returns (CI.Pointer x41))),
  "c_eigen_spmat_d_mul" ->
  (fun x37 x39 ->
    CI.make_ptr x41
      (owl_stub_21_c_eigen_spmat_d_mul (CI.cptr x37) (CI.cptr x39)))
| Function
    (CI.Pointer x43, Function (CI.Pointer x45, Returns (CI.Pointer x46))),
  "c_eigen_spmat_d_sub" ->
  (fun x42 x44 ->
    CI.make_ptr x46
      (owl_stub_20_c_eigen_spmat_d_sub (CI.cptr x42) (CI.cptr x44)))
| Function
    (CI.Pointer x48, Function (CI.Pointer x50, Returns (CI.Pointer x51))),
  "c_eigen_spmat_d_add" ->
  (fun x47 x49 ->
    CI.make_ptr x51
      (owl_stub_19_c_eigen_spmat_d_add (CI.cptr x47) (CI.cptr x49)))
| Function (CI.Pointer x53, Returns (CI.Pointer x54)),
  "c_eigen_spmat_d_adjoint" ->
  (fun x52 ->
    CI.make_ptr x54 (owl_stub_18_c_eigen_spmat_d_adjoint (CI.cptr x52)))
| Function (CI.Pointer x56, Returns (CI.Pointer x57)),
  "c_eigen_spmat_d_transpose" ->
  (fun x55 ->
    CI.make_ptr x57 (owl_stub_17_c_eigen_spmat_d_transpose (CI.cptr x55)))
| Function
    (CI.Pointer x59,
     Function (CI.Primitive CI.Int, Returns (CI.Pointer x61))),
  "c_eigen_spmat_d_col" ->
  (fun x58 x60 ->
    CI.make_ptr x61 (owl_stub_16_c_eigen_spmat_d_col (CI.cptr x58) x60))
| Function
    (CI.Pointer x63,
     Function (CI.Primitive CI.Int, Returns (CI.Pointer x65))),
  "c_eigen_spmat_d_row" ->
  (fun x62 x64 ->
    CI.make_ptr x65 (owl_stub_15_c_eigen_spmat_d_row (CI.cptr x62) x64))
| Function (CI.Pointer x67, Returns (CI.Pointer x68)),
  "c_eigen_spmat_d_clone" ->
  (fun x66 ->
    CI.make_ptr x68 (owl_stub_14_c_eigen_spmat_d_clone (CI.cptr x66)))
| Function
    (CI.Pointer x70,
     Function
       (CI.Primitive CI.Int, Function (CI.Primitive CI.Int, Returns CI.Void))),
  "c_eigen_spmat_d_reshape" ->
  (fun x69 x71 x72 ->
    owl_stub_13_c_eigen_spmat_d_reshape (CI.cptr x69) x71 x72)
| Function (CI.Pointer x74, Returns CI.Void), "c_eigen_spmat_d_uncompress" ->
  (fun x73 -> owl_stub_12_c_eigen_spmat_d_uncompress (CI.cptr x73))
| Function (CI.Pointer x76, Returns CI.Void), "c_eigen_spmat_d_compress" ->
  (fun x75 -> owl_stub_11_c_eigen_spmat_d_compress (CI.cptr x75))
| Function (CI.Pointer x78, Returns (CI.Primitive CI.Int)),
  "c_eigen_spmat_d_is_compressed" ->
  (fun x77 -> owl_stub_10_c_eigen_spmat_d_is_compressed (CI.cptr x77))
| Function (CI.Pointer x80, Returns CI.Void), "c_eigen_spmat_d_reset" ->
  (fun x79 -> owl_stub_9_c_eigen_spmat_d_reset (CI.cptr x79))
| Function
    (CI.Pointer x82,
     Function
       (CI.Primitive CI.Int,
        Function
          (CI.Primitive CI.Int,
           Function (CI.Primitive CI.Double, Returns CI.Void)))),
  "c_eigen_spmat_d_set" ->
  (fun x81 x83 x84 x85 ->
    owl_stub_8_c_eigen_spmat_d_set (CI.cptr x81) x83 x84 x85)
| Function
    (CI.Pointer x87,
     Function
       (CI.Primitive CI.Int,
        Function (CI.Primitive CI.Int, Returns (CI.Primitive CI.Double)))),
  "c_eigen_spmat_d_get" ->
  (fun x86 x88 x89 -> owl_stub_7_c_eigen_spmat_d_get (CI.cptr x86) x88 x89)
| Function (CI.Pointer x91, Returns (CI.Primitive CI.Int)),
  "c_eigen_spmat_d_nnz" ->
  (fun x90 -> owl_stub_6_c_eigen_spmat_d_nnz (CI.cptr x90))
| Function (CI.Pointer x93, Returns (CI.Primitive CI.Int)),
  "c_eigen_spmat_d_cols" ->
  (fun x92 -> owl_stub_5_c_eigen_spmat_d_cols (CI.cptr x92))
| Function (CI.Pointer x95, Returns (CI.Primitive CI.Int)),
  "c_eigen_spmat_d_rows" ->
  (fun x94 -> owl_stub_4_c_eigen_spmat_d_rows (CI.cptr x94))
| Function (CI.Primitive CI.Int, Returns (CI.Pointer x97)),
  "c_eigen_spmat_d_eye" ->
  (fun x96 -> CI.make_ptr x97 (owl_stub_3_c_eigen_spmat_d_eye x96))
| Function (CI.Pointer x99, Returns CI.Void), "c_eigen_spmat_d_delete" ->
  (fun x98 -> owl_stub_2_c_eigen_spmat_d_delete (CI.cptr x98))
| Function
    (CI.Primitive CI.Int,
     Function (CI.Primitive CI.Int, Returns (CI.Pointer x102))),
  "c_eigen_spmat_d_new" ->
  (fun x100 x101 ->
    CI.make_ptr x102 (owl_stub_1_c_eigen_spmat_d_new x100 x101))
| _, s ->  Printf.ksprintf failwith "No match for %s" s


let foreign_value : type a b. string -> a Ctypes.typ -> a Ctypes.ptr =
  fun name t -> match t, name with
| _, s ->  Printf.ksprintf failwith "No match for %s" s
