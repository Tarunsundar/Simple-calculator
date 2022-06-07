type Operator = String

simpleCalculator::Double -> Double -> Operator -> IO()
simpleCalculator n1 n2 op = do
    if(op == "+")
        then print (n1 + n2)
    else if(op == "-")
        then print (n1 - n2)
    else if(op == "*")
        then print (n1 * n2)
    else if(op == "/")
        then print( n1 / n2)
    else print("operator not defined!")

main = do 
    putStr("Enter first number: ")
    firstNumberAsString <- getLine
    putStr("Enter second number: ")
    secondNumberAsString <- getLine
    putStr("Enter operator (+, -, *, /): ")
    operator <- getLine
    let firstNumber = read firstNumberAsString::Double
    let secondNumber = read secondNumberAsString::Double
    simpleCalculator firstNumber secondNumber operator