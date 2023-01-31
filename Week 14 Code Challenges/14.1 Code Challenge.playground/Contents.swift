import UIKit

func rockPaperScissors(_ input1: String, _ input2: String) -> String {
    guard input1.lowercased() == "scissors" || input1.lowercased() == "rock" || input1.lowercased() == "paper" else { return "Invalid Input For Player 1: \(input1)" }
    guard input2.lowercased() == "scissors" || input2.lowercased() == "rock" || input2.lowercased() == "paper" else { return "Invalid Input For Player 2: \(input2)" }
    
    switch input1.lowercased() {
    case "rock":
        switch input2.lowercased() {
        case "rock":
            return "Draw"
        case "paper":
            return "Player 2 won!"
        default:
            return "Player 1 won!"
        }
    case "scissors":
        switch input2.lowercased() {
        case "rock":
            return "Player 2 Won"
        case "paper":
            return "Player 1 won!"
        default:
            return "Draw"
        }
    default:
        switch input2.lowercased() {
        case "rock":
            return "Player 1 Won!"
        case "paper":
            return "Draw"
        default:
            return "Player 2 won!"
        }
    }
}
print(rockPaperScissors("scissors", "paper"))
