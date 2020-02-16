import Foundation

//квадратное уравнение

let a: Double = 1.2
let b: Double = 11
let c: Double = -3.1
let root1: Double
let root2: Double
let disc: Double = pow(Double(b),2)-4*a*c

if disc >= 0 {
     root1 = (-b-sqrt(disc))/(2*a)
     root2 = (-b+sqrt(disc))/(2*a)
}
else {
    print("Дискриминант меньше 0")
}


//прямоугольный треугольник

let cathet1: Double = 10
let cathet2: Double = 20

//площадь
let area = (cathet1+cathet2)/2

//гипотенуза
let hypotenuse: Double = sqrt(pow(Double(cathet1), 2) + pow(Double(cathet2), 2))

//периметр
let perimeter = cathet1 + cathet2 + hypotenuse

// сумма вклада
var depositSumm: Double = 600000
let percent: Double = 7.5
var depositTerm = 1
var summPercent: Double

while depositTerm <= 5  {
    summPercent = depositSumm/100 * percent
    depositSumm = depositSumm+summPercent
    depositTerm+=1
}
print(depositSumm)
