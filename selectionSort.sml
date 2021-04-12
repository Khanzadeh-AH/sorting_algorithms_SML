(* finds the minimum element of the list by doing one by one comparison *)
fun find_min [a] = a
|   find_min (h1::h2::rest) =   if h1 < h2 then find_min (h1::rest)
                                else find_min (h2::rest);

(* removes the minimum element of the list (removes only one element at the time) *)
fun remove_min ([], a) = []
|   remove_min (h::t, a) =  if h = a then t
                            else h::remove_min (t, a);


fun selectionsort [] = []
|   selectionsort [a] = [a]
|   selectionsort L = 

        let
            val min_element = find_min (L)
            val remainder = remove_min (L,min_element)
        in
            min_element::selectionsort(remainder)
        end;
