import UIKit

let arrayOfNumbers = [1,2,20,4,5,6,7,8,9,10]
var sum = 0

for number in 1..<10{
    sum += number
    print("the new sum is \(sum)")
}

sum = 0
for number in arrayOfNumbers{
    sum += number
    print("the new sum is \(sum)")
}
sum = 0
for number in 1...10{
    sum += number
    print("the new sum is \(sum)")
}
sum = 0
for number in 1...10 where number % 2 == 0{
    sum += number
    print("the new sum is \(sum)")
}
