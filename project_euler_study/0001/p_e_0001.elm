-- Project Euler No.0001 by Elm

import Html exposing (text, div, p)

sum_multiples_3or5 n =
    List.range 1 (n - 1)
    |> List.filter (\x -> (rem x 3 == 0) || (rem x 5 == 0))
    |> List.foldl ( + ) 0
    |> toString
    |> text

main =
    div [] [
        p [] [ sum_multiples_3or5 10   ]
    ,   p [] [ sum_multiples_3or5 1000 ]
    ]
