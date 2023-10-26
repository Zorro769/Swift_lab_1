import Foundation


enum CalculationsError : Error{
  case invalidInput
  case divisionByZero
}

var firstOperand :Int? = 20
var secondOperand : Int? = 0
var operation : String? = "/"

func add(first: Int?, second:Int?) throws -> Int{
  guard let a = first, let b = second else{
    throw CalculationsError.invalidInput
  }
    return a + b
}
func substract(first: Int?, second:Int?) throws -> Int{
  guard let a = first, let b = second else{
    throw CalculationsError.invalidInput
  }
    return a - b
}
func multiply(first: Int?, second:Int?) throws -> Int{
  guard let a = first, let b = second else{
    throw CalculationsError.invalidInput
  }
    return a * b
}
func divide(first: Int?, second:Int?) throws -> Int{
  guard let a = first, let b = second else{
    throw CalculationsError.invalidInput
  }
  if (b == 0 ) {
    throw CalculationsError.divisionByZero
  }
    return a / b
}

if let action = operation, let a = firstOperand, let b = secondOperand{
  do{
    switch action {
    case "+":
      try print(add(first:a,second:b))
    case "-":
      try print(substract(first:a,second:b))
    case "*":
      try print(multiply(first:a,second:b))
   case "/":
      try print(divide(first:a,second:b))
    default:
      print("Unsupported operation")
    }
  }
  catch CalculationsError.invalidInput{
    print("Invalid typed input ")
  }
  catch CalculationsError.divisionByZero{
    print("Division by zero detected")
  }
} else {
  print("Invalid input")
}