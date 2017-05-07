//
//  User.swift
//  GitHubSearchSample
//
//  Created by Naoki_Sawada on 2017/05/06.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

struct User : JSONDecodable {
    let id: Int
    let login: String
    
    init(json: Any) throws {
        
        guard let dictionary = json as? [String : Any] else {
            throw JSONDecodeError.invaildFormat(json: json)
        }
        
        guard let id = dictionary["id"] as? Int else {
            throw JSONDecodeError.missingValue(key: "id", actualValue: dictionary["id"])
        }

        guard let login = dictionary["login"] as? String else {
            throw JSONDecodeError.missingValue(key: "login", actualValue: dictionary["login"])
        }
       
        self.id = id
        self.login = login
    }
}
