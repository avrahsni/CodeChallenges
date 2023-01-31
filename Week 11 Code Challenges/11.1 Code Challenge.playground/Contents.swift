import UIKit

func timeString(from ballCounts: BallCount) -> String {
    guard ballCounts.hr >= 0, ballCounts.fiveMin >= 0, ballCounts.min >= 0 else {
        return "there are only two genders, you can't have negative balls"
    }
    
    var hour = ballCounts.hr + ((ballCounts.fiveMin * 5) + ballCounts.min) / 60;
    var min = (ballCounts.fiveMin * 5) + ballCounts.min
    var digitHolder: Int
    if min / 10 == 0 {
        digitHolder = 0
        return "The current time is \(hour):\(digitHolder)\(min)"
    }
    
    return "The current time is \(hour):\(min)"
}
struct BallCount: Codable {
    
    var hr: Int
    var fiveMin: Int
    var min: Int
    
    var type: MaterialType
}

enum MaterialType: Codable {
    case metal
    case plastic
}



// MARK: - 0 Encoding an object
let ballCounts = BallCount(hr: 2, fiveMin: 7, min: 2, type: .plastic)
print(timeString(from: ballCounts)) // Not necessary, this line was for the code challenge
// 1. Convert ballCounts to JSON
// 1.1 Create some sort of encoder (JSON Encoder)
let encoder = JSONEncoder()

// 1.2 Use the encoder to encode your object
let dataObject = try! encoder.encode(ballCounts)

//do {
//    let object = try encoder.encode(ballCounts)
//    'try?' returns nil when an error is thrown: let object: Data?
//    'try!' crash if an error is thrown.  But the object returned isn't optional: 'let object: Data'
//    'try' needs to be inside a 'do' { } block
//}
//catch {
//    print(error)
//}

// 2. Save Data To A File
// 2.1 Documents Directory
let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
// /User/usersIphone/documents/ballcounts.json

// 2.2 Get the URL to the file we'll save to:
let saveFileURL = documentsDirectory.appendingPathComponent("ballCountsData").appendingPathExtension("json")

// 2.3 Save data to file url
try! dataObject.write(to: saveFileURL)

// DATA IS SAVED TO FILE


// MARK: - Decoding an Object (JSON
// 1. Get the file UEL to read from:
// See 2.2 & 2.3

// 1.1 get 'Data' from file
let data = try! Data(contentsOf: saveFileURL)

// 2.1 Create a Decoder
// 2.2 Decode our object
let newBallCount = try! JSONDecoder().decode(BallCount.self, from: data)
// 'let newBallCount: BallCount'

// BALLCOUNT WAS CREATED FROM A FILE!!!

