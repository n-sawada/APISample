//
//  main.swift
//  GitHubSearchSample
//
//  Created by Naoki_Sawada on 2017/05/06.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation


print("Enter your query here> ", terminator: "")

guard let keyword = readLine(strippingNewline: true) else {
    exit(1)
}

// create API Client
let client = GitHubClient()

// create Request
let request = GitHubAPI.SearchRepositories(keyword: keyword)

// Send Request
client.send(request: request) { result in
    
    switch result {
    case let .success(response):
        for item in response.items {
            print(item.owner.login + "/" + item.name)
        }
        exit(0)
        
    case let .failure(error):
        print(error)
        exit(1)
    }
}

let timeoutInterval: TimeInterval = 60
Thread.sleep(forTimeInterval: timeoutInterval)
print("Connection Timeout")
exit(1)
