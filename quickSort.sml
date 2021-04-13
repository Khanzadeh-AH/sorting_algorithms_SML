(* unnecessary *)
fun partition([], piv) = [piv]
|   partition(h::t, piv) = 
        if h < piv then [h] @ partition(t, piv)
        else partition(t, piv) @ [h];    


(* splits then given list into two lists that 
elements of one of them is less than pivot
and elements of the other one is greater than pivot *)
fun pivot_split([], pivot) = ([],[])
|   pivot_split(h::t, pivot) =

        let
            val (L,R) = pivot_split(t, pivot)
        in

            if h < pivot then (h::L, R)
            else (L, h::R)
        end;
        
        

fun quicksort([]) = []
|   quicksort([a]) = [a]
|   quicksort(h::t) =
        let
            val (L, R) = pivot_split(t, h)
        in
            quicksort(L)@[h]@quicksort(R)
        end;



pivot_split([12,3,5,67,1,2,3,5,7],3);

quicksort([12,3,5,67,1,2,3,5,7]);