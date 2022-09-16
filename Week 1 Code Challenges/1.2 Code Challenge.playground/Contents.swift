import UIKit

let color = "blue"
let number = 50
let letter = "a"

if color == "blue" {
    print("That is my favorite color!")
}
else {
    print("Cool")
}

if number >= 0 && number <= 100 {
    print("That is a valid number")
}
else {
    print("That is NOT a valid number")
}

switch letter {
case "a", "e", "i", "o", "u":
    print("Letter is a vowel")
case "y", "w":
    print("This letter can sometimes be considered a vowel, depending on who you ask.")
default:
    print("Letter is a consonant")
}
