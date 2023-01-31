import UIKit

func filterString(_ list: [String]) -> [String] {
    let geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]
    return list.filter { str in
        return !geese.contains(str)
    }
}
print(filterString(["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"]))
