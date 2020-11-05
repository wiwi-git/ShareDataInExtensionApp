//
//  SharedUserDefaults.swift
//  BundleTest
//
//  Created by 위대연 on 2020/11/05.
//

import Foundation
struct SharedUserDefaults {
    static let suiteName = "group.com.dy.BundleTest"
    static let shared = UserDefaults.init(suiteName: SharedUserDefaults.suiteName)

    enum Keys:String {
        case gitUrl = "gitUrl"
    }
    
    func string(forKey:SharedUserDefaults.Keys) -> String? {
        return SharedUserDefaults.shared?.string(forKey: forKey.rawValue)
    }
    
    func setValue(_ value:Any?,forKey:SharedUserDefaults.Keys) {
        guard let defaults = SharedUserDefaults.shared else {
            print("Error. ?????? setValue:")
            return
        }
        defaults.setValue(value, forKey: forKey.rawValue)
    }
}
