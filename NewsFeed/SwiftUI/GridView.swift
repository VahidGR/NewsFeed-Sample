//
//  SwiftUIView.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct GridView: View {
    
    let articles: [Article]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0 ..< articles.count) { i in
                    ScrollView {
                        HStack {
                            PostCell(article: self.articles[i])
                        }.frame(width: nil, height: 300)
                            .background(Color.init(UIColor.init(white: 0.9, alpha: 0.3)))
                            .cornerRadius(10)
                        }
                }
            }
        }
    }
    
}
