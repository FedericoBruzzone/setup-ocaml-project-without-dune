(* ocamlfind ocamlopt -o main.cmo -linkpkg -package base -I bin bin/bin_file.ml main.ml *)
(* ocamlbuild -use-ocamlfind main.native *)

open Printf
open Base
open Bin_file

let () =
  printf "Hello world\n"; 

  let x = List.range 1 10 in
  List.iter x ~f:(fun x -> printf "%d\n" x);

  let instance = new Bin_file.my_class in
  instance#greet "Federico";

  Bin_file.add 1 2 |> printf "%d\n"; 

  printf "%d\n" (Bin_file.add 1 2);
