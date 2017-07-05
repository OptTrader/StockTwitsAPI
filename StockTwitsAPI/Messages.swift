//
//  Messages.swift
//  StockTwitsAPI
//
//  Created by Chris Kong on 7/4/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import Foundation

struct Messages: Decodable {
    let user: User
    let body: String
    let created_at: String
    let links: [Links]?
}
