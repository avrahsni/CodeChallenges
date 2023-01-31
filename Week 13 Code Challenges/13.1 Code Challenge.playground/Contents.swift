import UIKit

func alphaPos(_ letter: String) -> String {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    guard letter.count == 1 && alphabet.contains(letter.lowercased()) else {
        return "Invalid Input"
    }
    let letter = letter.lowercased()
    
    
//    for char in 0...alphabet.count {
//        let position = alphabet.index(alphabet.startIndex, offsetBy: char)
//        if letter == String(alphabet[position]) {
//            return "Position in alphabet: \(char + 1)"
//        }
//    }
    
    for char in alphabet.enumerated() {
        if letter == String(char.element) {
            return "Position in alphabet: \(char.offset + 1)"
        }
    }
    
    return "How the hell did you get this code to run"
}

print(alphaPos("z"))
