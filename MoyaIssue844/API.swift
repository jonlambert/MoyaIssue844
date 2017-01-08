//
//  API.swift
//  MoyaIssue844
//
//  Created by Jon Lambert on 06/01/2017.
//  Copyright © 2017 Evada. All rights reserved.
//

import UIKit
import Moya

enum API {
    case test
}

extension API: TargetType {
    var baseURL: URL {
        return URL(string: "http://requestb.in")!
    }
    
    var path: String {
        return "/1absdrt1"
    }
    
    var method: Moya.Method {
        return .patch
    }
    
    var parameters: [String: Any]? {
        return [
            "param": "test"
        ]
    }
    
    var sampleData: Data {
        return "Hello world".data(using: .utf8)!
    }
    var task: Task {
        return .request
    }
}
