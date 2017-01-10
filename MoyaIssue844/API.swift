import Foundation
import Moya

enum API {
    case ping
}

extension API: TargetType {
    var baseURL: URL {
        return URL(string: "https://hookb.in/Z6mo35ag")!
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var parameters: [String: Any]? {
        return [
            "foo": "bar"
        ]
    }
    
    var sampleData: Data {
        return "Sample data".data(using: .utf8)!
    }
    
    var task: Task {
        return .request
    }
    
    var validate: Bool {
        return false
    }
}
