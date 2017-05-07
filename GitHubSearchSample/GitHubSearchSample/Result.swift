//
//  Result.swift
//  GitHubSearchSample
//
//  Created by Naoki_Sawada on 2017/05/07.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

enum Result<T, Error : Swift.Error> {
    case success(T)
    case failure(Error)
    
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
