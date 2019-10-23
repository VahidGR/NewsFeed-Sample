//
//  SceneDelegate.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    private let newsService = NewsService()

    var updateUI: (() -> ())?

    var news: News? {
        didSet {
            guard let _ = news else { return }
            self.updateUI?()
        }
    }
        
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        setupVariables()
        getNews()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: ContentView(newsData: NewsData(news)).environmentObject(NewsData(news)))
            self.window = window
            window.makeKeyAndVisible()
        }

        // Update UI on data recieve
        updateUI = {
            self.window?.rootViewController = UIHostingController(rootView: ContentView(newsData: NewsData(self.news)).environmentObject(NewsData(self.news)))
        }
        
    }

}

// MARK: - Networking
private extension SceneDelegate {
    
    func setupVariables() {
        newsService.delegate = self
    }
    
    func getNews() {
        newsService.get()
    }
    
}
