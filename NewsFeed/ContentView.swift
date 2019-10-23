//
//  ContentView.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var newsData: NewsData

    var body: some View {
        NavigationView {
            VStack {
                GridView(articles: newsData.news?.articles ?? []).padding(.horizontal, 10)
                Text("Powered by NewsAPI.org")
                    .frame(width: nil, height: 50, alignment: .center)
            }
        .navigationBarTitle("News Feed")
        }
    }
    
}
