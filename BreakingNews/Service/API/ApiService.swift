//
//  ApiServiec.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import Alamofire
import Foundation

class ApiService {

    // MARK: - Variable
    let sessionManager: SessionManager = {
        let conf = URLSessionConfiguration.default

        conf.timeoutIntervalForRequest = Params.timeout
        conf.timeoutIntervalForResource = Params.timeout

        return SessionManager(configuration: conf)
    }()

    // MARK: - Other
    struct Params {
        static let baseUrl = URL(string: Bundle.main.apiBaseUrl())!
        static let header = [ "X-Api-Key": Bundle.main.apiKey() ]
        static let timeout: Double = 15
        static let params = ["country": "us"]
    }

}
