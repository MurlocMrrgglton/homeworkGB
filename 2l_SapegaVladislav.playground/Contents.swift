import UIKit

// №1
let num = 9

if num % 2 == 0 {
    print("Число четное")
}
else {
    print("Число нечетное")
}

// №2
if num % 3 == 0 {
    print("Число делится на 3")
}
else {
    print("Число не делится на 3")
}

// №3

var massive: [Int] = []
while massive.count < 100 {
    massive.append(Int(arc4random()))
}
massive.sort(by: {$0 < $1})
print(massive)
print(massive.count)

// #4
let newArray = massive.filter { $0 % 2 != 0 && $0 % 3 != 0 }
print(newArray)

// #5
