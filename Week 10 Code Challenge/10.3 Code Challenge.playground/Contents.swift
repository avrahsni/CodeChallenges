import UIKit

func convertToDate(_ dateString: String) -> Date? {
    
    var date = dateString
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
        
    var temp = String(date.removeLast())
    var day = "\(date.removeLast())"
    day += temp
    date.removeLast()
    
    temp = String(date.removeLast())
    var month = "\(date.removeLast())"
    month += temp
    date.removeLast()
    
    temp = String(date.removeLast())
    var year = "\(date.removeLast())"
    year += temp
    temp = "\(date.removeLast())"
    temp += year
    year = "\(date.removeLast())"
    year += temp
    
    guard Int(day) != nil && Int(month) != nil && Int(year) != nil else {
        print("*INVALID DATE*  You Suck")
        return nil
    }
    
    return formatter.date(from: dateString)
    
}
convertToDate("2005-08-27")
