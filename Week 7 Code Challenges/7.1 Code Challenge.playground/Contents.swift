import UIKit

func warnSheep(_ sheepArray: [String]) {
    for i in 0..<sheepArray.count {
        if sheepArray[i] == "wolf" {
            if sheepArray.last != "sheep" {
                print("Go away and stop eating my sheep")
            }
            else {
                let sheepPosition = sheepArray.count - (i + 1)
                print("Oy vey iz mir! Sheep number \(sheepPosition)! You are about to be eaten by a wolf!")
            }
        }
    }
}
warnSheep(["sheep", "sheep", "wolf"])
warnSheep(["sheep", "sheep", "sheep", "wolf", "sheep"])
warnSheep(["sheep", "sheep", "sheep", "wolf", "sheep", "sheep"])
