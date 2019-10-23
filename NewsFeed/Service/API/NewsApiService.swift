//
//  NewsApiService.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import Alamofire
import Foundation

class NewsApiService: ApiService {
    
    func get(success: @escaping (Data) -> Void, failure: @escaping (ServiceFailureType) -> Void) {
        
        let _ = sessionManager.request(NewsApiRouter.get)
            .validate(statusCode: [200])
            .responseJSON { response in

                guard let data = response.data else {
                    failure(.connection)
                    return
                }
                
                if let error = response.error {
                    
                    if error as? AFError == nil {
                        failure(.connection)
                    } else {
                        failure(.server)
                    }
                    
                }
                
                success(data)
                
        }
        
    }
    
}
