//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Ivanov Sergey on 17.12.2020.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegistered: Bool {
        didSet {
            StateManager.shared.saveState(
                userName: name,
                isRegistered: isRegistered
            )
        }
    }
    
    var name = ""
    
    init() {
        (name, isRegistered) = StateManager.shared.fetchState()
    }
    
}
