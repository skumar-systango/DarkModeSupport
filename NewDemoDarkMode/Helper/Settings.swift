
import Foundation

extension UserDefaults {
    var myTheme: Theme {
        get {
            //print(#function)
            return Theme(rawValue: integer(forKey: #function)) ?? .device
        }
        set {
            set(newValue.rawValue, forKey: #function)
        }
    }
}
