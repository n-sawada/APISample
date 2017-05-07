//
//  GitHubAPI.swift
//  GitHubSearchSample
//
//  Created by Naoki_Sawada on 2017/05/07.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

// オーバーライド禁止
final class GitHubAPI {
    
    // 型のネストで階層構造や関連性を名確認している
    
    struct SearchRepositories : GitHubRequest {
        let keyword: String
        
        // GitHubRequestが要求する連想型
        typealias Response = SearchResponse<Repository>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/repositories"
        }
        
        var parameters: Any? {
            return ["q": keyword]
        }
    }
    
    struct SearchUsers : GitHubRequest {
        let keyword: String

        typealias Response = SearchResponse<User>
    
        var method: HTTPMethod {
            return .get
        }
    
        var path: String {
            return "/search/users"
        }
        
        var parameters: Any? {
            return ["q" : keyword]
        }
    }
}
