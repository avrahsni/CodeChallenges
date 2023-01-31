import UIKit

extension Character {
    func sameCase(char: Character) -> Int {
        guard self.isLetter && char.isLetter else { return -1 }
        if (self.isLowercase && char.isLowercase) || (self.isUppercase && char.isUppercase) {
            return 1
        } else {
            return 0
        }
    }
}
let myChar: Character = "b"
print(myChar.sameCase(char: "d"))
