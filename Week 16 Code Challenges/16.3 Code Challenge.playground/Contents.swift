import UIKit

func swapName(_ fullName: String) -> String {
    
//    return fullName.split(separator: " ").reversed().joined(separator: " ")
    
    var name = fullName
    var first: String = ""
    for char in fullName {
        guard char != " " else {
            name.removeFirst()
            break }
        first.append(char == " " ? "" : "\(char)" )
        name.removeFirst()
    }
    name.append(" \(first)")
    return name
}
print(swapName("John Smith"))

