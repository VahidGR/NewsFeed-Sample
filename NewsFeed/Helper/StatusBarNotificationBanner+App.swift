//
//  StatusBarNotificationBanner+App.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/22/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import NotificationBannerSwift

extension StatusBarNotificationBanner {

    class var noConnection: StatusBarNotificationBanner {
        let title = "No connection."
        return StatusBarNotificationBanner(title: title, style: .info, colors: BannerColors())
    }

    class var serverFailure: StatusBarNotificationBanner {
        let title = "Server failure"
        return StatusBarNotificationBanner(title: title, style: .danger, colors: BannerColors())
    }
    
    class var connected: StatusBarNotificationBanner {
        let title = "Updated"
        return StatusBarNotificationBanner(title: title, style: .success, colors: BannerColors())
    }

}
