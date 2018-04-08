(* Project Euler No.0001 by OCaml *)

let range n =
    let rec f_p st en acc =
        if (st > en) then acc
                     else f_p st (en - 1) (en :: acc)
    in
        f_p 0 (n - 1) []

let sum_multiples_3or5 n =
    range(n)
    |> List.filter (fun x -> ((x mod 3 = 0) || (x mod 5 = 0)))
    |> List.fold_left ( + ) 0

let () = 
    sum_multiples_3or5 10 |> print_int |> print_newline

let () =
    sum_multiples_3or5 1000 |> print_int |> print_newline

