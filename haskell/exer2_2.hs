
array = [3,2,1]

less :: (Ord a) => a -> a -> Bool
less = \ x y -> x <= y

main = print (isSorted array less)

-- TODO: try tail call optimization
isSorted :: [a] -> (a -> a -> Bool) -> Bool
isSorted [] _ = True
isSorted [x] _ = True
isSorted (x:y:xs) cmp = cmp x y && isSorted (y:xs) cmp
