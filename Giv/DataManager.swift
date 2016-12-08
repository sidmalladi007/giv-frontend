//
//  DataManager.swift
//  ContactsLite
//

import Foundation
// MARK: - String Extension

extension String {
    // recreating a function that String class no longer supports in Swift 2.3
    // but still exists in the NSString class. (This trick is useful in other
    // contexts as well when moving between NS classes and Swift counterparts.)
    
    /**
     Returns a new string made by appending to the receiver a given string.  In this case, a new string made by appending 'aPath' to the receiver, preceded if necessary by a path separator.
     
     - parameter aPath: The path component to append to the receiver. (String)
     
     - returns: A new string made by appending 'aPath' to the receiver, preceded if necessary by a path separator. (String)
     
     */
    func stringByAppendingPathComponent(_ aPath: String) -> String {
        let nsSt = self as NSString
        return nsSt.appendingPathComponent(aPath)
    }
}


// MARK: - Data Manager Class
class DataManager {
    
    // MARK: - General
//    var latitude: CLLocationDegrees = 0.0
//    var longitude: CLLocationDegrees = 0.0
//    var carLocation = Location()
    
    var jtw = "akash"
    
    init() {
//        loadJTW()
        print("Documents folder is \(documentsDirectory())\n")
        print("Data file path is \(dataFilePath())")
    }
    
    
    // MARK: - Data Location Methods
    
    func documentsDirectory() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        return paths[0]
    }
    
    func dataFilePath() -> String {
//        return documentsDirectory().stringByAppendingPathComponent("Locations.plist")
        return documentsDirectory().stringByAppendingPathComponent("Sessions.plist")
    }
    
    
    // MARK: - Saving & Loading Data
    
    /**
     Saves location data to a plist.
     */
    
//    func saveLocations() {
//        let data = NSMutableData()
//        let archiver = NSKeyedArchiver(forWritingWith: data)
//        //        archiver.encodeObject(carLocation, forKey: "Latitude")
//        //        archiver.encodeObject(carLocation, forKey: "Longitude")
//        archiver.encode(carLocation , forKey: "Location")
//        archiver.finishEncoding()
//        data.write(toFile: dataFilePath(), atomically: true)
//    }
    
    func saveJTW() {
        print(jtw)
        
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWith: data)
        //        archiver.encodeObject(carLocation, forKey: "Latitude")
        //        archiver.encodeObject(carLocation, forKey: "Longitude")
        archiver.encode(jtw, forKey: "jtw_token")
        archiver.finishEncoding()
        data.write(toFile: dataFilePath(), atomically: true)
        
        print(self.jtw)
        print("inside savejtw")
    }
    
    /**
     Loads the data from a plist into contacts array.
     */
    
    func loadJTW() {
        print(self.jtw)
        
        let path = dataFilePath()
        if FileManager.default.fileExists(atPath: path) {
            if let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                let unarchiver = NSKeyedUnarchiver(forReadingWith: data)
                self.jtw = unarchiver.decodeObject(forKey: "jtw_token") as! String
                unarchiver.finishDecoding()
            } else {
                print("\nFILE NOT FOUND AT: \(path)")
            }
        }
        print(self.jtw)
        print("inside loadjtw")
    }
    
//    func clearCarLocation() {
//        self.latitude = 0.0
//        self.longitude = 0.0
//    }
    
    func clearSession() {
        self.jtw = ""
    }
}
