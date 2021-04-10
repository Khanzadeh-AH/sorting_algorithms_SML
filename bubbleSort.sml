fun bubble([]) = []
|   bubble([a]) = [a]
|   bubble(a::b::rest) =
        if a > b then b::bubble(a::rest)
        else a::bubble(b::rest);



fun find_last_element([a]) = a
|   find_last_element(h::rest) = find_last_element(rest);


fun list_without_last_element([]) = []
|   list_without_last_element([a]) = []
|   list_without_last_element(h::rest) = if rest = [] then [h]
                                        else h::list_without_last_element(rest);


(* sorts in dec order *)

fun bubblesort([]) = []
|   bubblesort([a]) = [a]
|   bubblesort(L) = 
        let
            val last_element = find_last_element(bubble(L));
            val remaining = list_without_last_element(bubble(L))
        in
            last_element::bubblesort(remaining)
        end;





rev(bubblesort([192, 168, 172, 255, 0, 1, 45, 22]));