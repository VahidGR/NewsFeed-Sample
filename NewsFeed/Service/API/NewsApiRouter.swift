//
//  NewsApiRouter.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import Alamofire
import Foundation

enum NewsApiRouter: URLRequestConvertible {
    
    // MARK: - Router
    case get
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        
        var urlRequest = URLRequest(url: ApiService.Params.baseUrl.appendingPathComponent(path))
        urlRequest.allHTTPHeaderFields = ApiService.Params.header
        urlRequest.httpMethod = method.rawValue
        
        switch self {
            case .get: urlRequest = try URLEncoding.default.encode(urlRequest, with: ApiService.Params.params)
        }
        
        return urlRequest

    }
    
    // MARK: - Private
    
    private var method: HTTPMethod {
        
        switch self {
            case .get: return .get
        }
        
    }
    
    private var path: String {
        
        switch self {
            case .get: return "/v2/top-headlines"
        }
        
    }
    
}
