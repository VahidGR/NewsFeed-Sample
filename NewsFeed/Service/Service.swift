//
//  Service.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import Foundation

class Service<T: Decodable> {
        
    // MARK: - Public
    func jsonDecode(data: Data) -> T? {
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            print("\(error)")
            return nil
        }
        
    }

}

enum ServiceFailureType {
    case connection
    case server
}
