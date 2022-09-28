module FunctionWithLet where
    printInc2 n = let plusTwo = n + 2
        in print plusTwo -- a `let` followed by an `in` is a let expression