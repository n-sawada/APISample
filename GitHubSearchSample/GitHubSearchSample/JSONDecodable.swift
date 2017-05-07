//
//  JSONDecodable.swift
//  GitHubSearchSample
//
//  Created by Naoki_Sawada on 2017/05/06.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

protocol JSONDecodable {
    init(json: Any) throws
}
