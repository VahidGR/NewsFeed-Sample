//
//  NewsService.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import Foundation

class NewsService: Service<News> {
    
    // MARK: - Variable
    weak var delegate: NewsServiceDelegate?
    
    private let apiService = NewsApiService()
    
    // MARK: - Public
    func get() {
        
        apiService.get(success: { (data) in
            self.success(data)
        }) { (failure) in
            self.failure(failure)
        }
                
    }
    
    // MARK: - Private
    
    private func success(_ data: Data) {
        
        DispatchQueue.main.async {

            if let news = self.jsonDecode(data: data) {
                self.delegate?.newsGetDidComplete(news: news)
            } else {
                self.delegate?.newsGetDidComplete(failure: .server)
            }
            
        }
        
    }

    
    private func failure(_ failure: ServiceFailureType) {
        
        DispatchQueue.main.async {
            
            self.delegate?.newsGetDidComplete(failure: failure)

        }
        
    }
    
}

protocol NewsServiceDelegate: class {
    func newsGetDidComplete(news: News)
    func newsGetDidComplete(failure: ServiceFailureType)
}
