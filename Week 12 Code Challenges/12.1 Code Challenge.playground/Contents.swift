import UIKit

func wilsonPrime(_ num: Int) -> Bool {
    guard num > 0 else { return false }
    guard num != 1 else { return true }
    
    var mutatedPrime: Float;
    
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    var factorial = 1
    
    for i in 1...(num - 1) {
        factorial *= (num - i)
    }
    
    mutatedPrime = Float(factorial + 1) / Float(num * num)
    
    if round(mutatedPrime) == mutatedPrime {
        return true
    } else {
        return false
    }
}

print(wilsonPrime(5))
print(wilsonPrime(1))
