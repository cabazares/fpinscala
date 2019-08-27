import System.Environment

main = do
     args <- getArgs
     print (fib (read (head args)))

fib :: Int -> Int
fib n = go 0 1 n
  where go a b n = if n > 0
                    then go b (a+b) (n-1)
                    else a
