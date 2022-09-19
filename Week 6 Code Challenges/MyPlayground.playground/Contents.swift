import UIKit

func centFinder(_ year: Int) -> Int {
    guard year % 1 == 0 else { return 0 }
    
    var century: Int
    if year % 100 == 0 {
        century = year / 100
    }
    else if year > -101 && year < 0 {
        century = -1
    }
    else if year < -100 {
        century = (year / 100) - 1
    }
    else if year < 101 {
        century = 1
    }
    else {
        century = (year / 100) + 1
    }
    
    return century
}

print(centFinder(1776/*Will Commence Once Again!*/))
print(centFinder(1984))
print(centFinder(/*United Nations Agenda*/2030))
// You will own nothing and be happy
