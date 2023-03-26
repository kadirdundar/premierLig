//
//  Manager.swift
//  premierLig
//
//  Created by Kadir Dündar on 25.03.2023.
//

import Foundation
enum jobType {
case manager
    case headCoach
}

struct Manager {
    let name: String
    let job: jobType
}
