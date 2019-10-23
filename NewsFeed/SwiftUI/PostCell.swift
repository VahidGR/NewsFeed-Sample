//
//  PostCell.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/22/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct PostCell: View {
        
    let article: Article
    let noImageUrl = "https://icon-library.net/images/no-image-icon/no-image-icon-13.jpg"
    
    var body: some View {
        VStack {
            WebImage(url: URL(string: article.urlToImage ?? noImageUrl))
                .onSuccess(perform: { (image, cacheType) in
                    // Success
                })
                .resizable()
                .frame(width: nil, height: 225)
                .cornerRadius(10.0)
            Text(article.title ?? "No title")
                .font(.body).foregroundColor(.black)
                .frame(width: nil, height: 30, alignment: .center)
                .padding(.horizontal, 10)
                .lineLimit(2)
            HStack {
                Text(article.author ?? "").font(.subheadline)
                Spacer()
                Text(article.source.name ?? "").font(.subheadline)
            }.padding(.horizontal)
            Spacer()
        }
    }

}
