(* merge sort *)


(* It takes two sorted lists and then merges them *)
fun merge(L, []) = L
|   merge([], R) = R
|   merge(hl::tl, hr::tr) = if hl < hr then hl::merge(tl, hr::tr)
                            else hr::merge(hl::tl, tr);


(* merge([1,2,5,8,9,11], [1,3,4,56,78,97]); *)
(* in this example the two lists are not sorted so it does not give the desired output *)
(* merge([1,4,7,3,1], [3,7,2,4,1]); *)


(* It splits the given list into two lists (even and odd) *)
fun split([]) = ([], [])
|   split([a]) = ([a], [])
|   split(a::b::rest) = 

        let 
            val (L, R) = split(rest)
        in
            (a::L, b::R)
        end;

(* split([1,2,3,4,5,6,7,8,9]); *)


(* It recursively splits the given list into two lists and then merges them *)
fun mergesort([]) = []
|   mergesort([a]) = [a]
|   mergesort(List) =

        let
            val (L, R) = split(List)
        in
            merge(mergesort(L), mergesort(R))
        end;

(* mergesort([1,2,7,2,1,0,22,65,1,2,56]); *)