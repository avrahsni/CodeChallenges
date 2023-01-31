import UIKit

func animalYears(_ humanYears: Int) -> [String : Int] {
    var dy = 0
    var cy = 0
    
    for i in 1...humanYears {
        dy += i == 1 ? 15 : i == 2 ? 9 : 5
        cy += i == 1 ? 15 : i == 2 ? 9 : 4
    }
    return ["Human Years" : humanYears, "Cat Years" : cy, "Dog Years" : dy]
}

print(animalYears(3))
