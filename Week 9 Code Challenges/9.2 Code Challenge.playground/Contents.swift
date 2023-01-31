import UIKit

func elementMatch(_ first: [String], _ second: [String]) -> [String] {
    var matching = [String]()
    for i in 0..<first.count {
        if second.contains(first[i].lowercased()) {
            matching.append(first[i])
        }
    }
    return matching
}


func elementMisMatch(_ first: [String], _ second: [String]) -> [String] {
    var notMatching = [String]()
    var match = false
    for i in 0..<first.count {
        match = false
        for j in 0..<second.count {
            if first[i].lowercased() == second[j].lowercased() {
                match = true
            }
        }
        if !match {
            notMatching.append(first[i])
        }
    }
    for i in 0..<second.count {
        match = false
        for j in 0..<first.count {
            if first[j].lowercased() == second[i].lowercased() {
                match = true
            }
        }
        if !match {
            notMatching.append(second[i])
        }
    }
    return notMatching
}

let first = ["Bird", "lizard", "fish", "cat"], second = ["dog", "cat", "bird"]
print(elementMatch(first, second))
print(elementMisMatch(first, second))
