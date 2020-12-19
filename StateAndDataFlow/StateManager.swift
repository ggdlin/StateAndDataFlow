//
//  StateManager.swift
//  StateAndDataFlow
//
//  Created by Ivanov Sergey on 19.12.2020.
//

import Foundation

class StateManager {
    
    static let shared = StateManager()

    private let userDefaults = UserDefaults.standard
    private let userKey = "userName"
    private let isRegisteredKey = "isRegistered"
    
    private init() {}
    
    func saveState(userName: String, isRegistered: Bool) {
        userDefaults.set(userName, forKey: userKey)
        userDefaults.set(isRegistered, forKey: isRegisteredKey)
        print("state is saved")
    }
    
    func fetchState() -> (String, Bool) {
        guard let isRegistered =
                userDefaults.value(forKey: isRegisteredKey) as? Bool else {
            return ("", false)
            
        }
        guard let userName =
                userDefaults.value(forKey: userKey) as? String else {
            return ("", isRegistered)
            
        }
        print("state is fetched")
        return (userName, isRegistered)
    }
    
}
