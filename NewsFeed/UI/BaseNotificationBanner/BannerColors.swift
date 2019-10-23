//
//  BannerColors.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/22/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import NotificationBannerSwift

class BannerColors: BannerColorsProtocol {

    func color(for style: BannerStyle) -> UIColor {
        switch style {
        case .danger:
            return UIColor.App.red
        default:
            return UIColor.App.purple
        }
    }

}
