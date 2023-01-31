import UIKit

func search(_ myArrayS: [String]?, _ myArrayI: [Int]?, for xS: String?, or xI: Int?) -> Bool? {
    // Could Have Used The Any Type
    guard let array = myArrayS, let x = xS else {
        guard let array = myArrayI, let x = xI else { return nil }
        let contains: Bool = array.contains(x)
        return contains
    }
    if let _ = myArrayI, let _ = xI {
        print("This function takes either string values or int values, not both")
        return nil
    }
    let contains: Bool = array.description.lowercased().contains(x.lowercased())
    return contains
}

if let contains = search(nil, [1, 2, 3, 4, 6, 8, 12], for: nil, or: 8) {
    print(contains)
}
if let contains = search(["Hello", "World", "Swift", "Apple"], [1, 2, 3, 4, 6, 8, 12], for: "hello", or: nil) {
    print(contains)
}
