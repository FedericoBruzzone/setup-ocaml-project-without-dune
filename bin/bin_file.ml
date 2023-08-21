open Printf
open Base

module Bin_file =
struct
  class my_class =
    object
      method greet name =
        printf "Hello, %s!\n" name
    end
  let add x y = x + y;;
end
