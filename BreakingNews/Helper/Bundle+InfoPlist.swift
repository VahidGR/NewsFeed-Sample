//
//  Bundle+InfoPlist.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import Foundation

extension Bundle {
    
    func apiBaseUrl() -> String {
        return object(forInfoDictionaryKey: "ApiBaseUrl") as? String ?? ""
    }
    
    func apiKey() -> String {
        return object(forInfoDictionaryKey: "ApiKey") as? String ?? ""
    }
    
}
