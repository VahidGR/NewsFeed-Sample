//
//  SceneDelegate+ServiceDelegate.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/22/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import NotificationBannerSwift

extension SceneDelegate: NewsServiceDelegate {
    
    func newsGetDidComplete(news: News) {
        self.news = news
        StatusBarNotificationBanner.connected.show()
    }
    
    func newsGetDidComplete(failure: ServiceFailureType) {
                
        switch failure {
        case .server:
            StatusBarNotificationBanner.serverFailure.show()
        case .connection:
            StatusBarNotificationBanner.noConnection.show()
        }
        
    }
    
}
