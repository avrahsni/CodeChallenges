import UIKit

func isToday(_ date: Date) -> Bool {
    return Calendar.current.isDateInToday(date)
//    return date.formatted(date: .abbreviated, time: .omitted) == Date().formatted(date: .abbreviated, time: .omitted)
}
let calendar = Calendar(identifier: .gregorian)
var myDateComponents = DateComponents()
myDateComponents.year = 1736
myDateComponents.month = 12
myDateComponents.day = 13
print(isToday(calendar.date(from: myDateComponents)!))
print(isToday(Date()))
