//
//  Manager.swift
//  premierLig
//
//  Created by Kadir Dündar on 25.03.2023.
//

import Foundation
enum jobType : String{
case manager = "manager"
    case headCoach = "headcoach"
}

struct Manager {
    let name: String
    let job: jobType
}
