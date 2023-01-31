import UIKit

func rockPaperScissors(_ input1: String) -> String {
    guard input1.lowercased() == "scissors" || input1.lowercased() == "rock" || input1.lowercased() == "paper" else { return "Invalid Input For Player 1: \(input1)" }
    
    let options = ["rock", "paper", "scissors"]
    let player2 = options.randomElement()
    
    print("\(input1) vs \(player2!)")
    
    switch input1.lowercased() {
    case "rock":
        switch player2 {
        case "rock":
            return "Draw"
        case "paper":
            return "Player 2 won!"
        default:
            return "Player 1 won!"
        }
    case "scissors":
        switch player2 {
        case "rock":
            return "Player 2 Won"
        case "paper":
            return "Player 1 won!"
        default:
            return "Draw"
        }
    default:
        switch player2 {
        case "rock":
            return "Player 1 Won!"
        case "paper":
            return "Draw"
        default:
            return "Player 2 won!"
        }
    }
}
print(rockPaperScissors("scissors"))
