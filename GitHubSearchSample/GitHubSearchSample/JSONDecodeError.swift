//
//  JSONDecodeError.swift
//  GitHubSearchSample
//
//  Created by Naoki_Sawada on 2017/05/06.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

enum JSONDecodeError: Error {
    case invaildFormat(json: Any)
    case missingValue(key: String, actualValue: Any?)
}
