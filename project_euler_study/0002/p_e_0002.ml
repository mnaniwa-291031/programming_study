(* Project Euler No.0002 by OCaml *)

let fibonacci num =
    let rec f_p fs sn acc =
        if (fs < num) then (f_p sn (fs + sn) (fs :: acc))
                      else (List.rev acc)
    in
        f_p 1 2 []

let sum_of_list xl =
    fibonacci xl
    |> List.filter (fun x -> (x mod 2 = 0))
    |> List.fold_left ( + ) 0

let main =
    sum_of_list     100 |> print_int |> print_newline ;
    sum_of_list 4000000 |> print_int |> print_newline

(* Test *)

let test_0 = fibonacci 100 = [1; 2; 3; 5; 8; 13; 21; 34; 55; 89]

