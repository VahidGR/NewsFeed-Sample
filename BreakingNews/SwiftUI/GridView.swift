//
//  SwiftUIView.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/21/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct GridView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0 ..< 10) { _ in
                    ScrollView {
                        HStack {
                            PostCell()
                        }.frame(width: nil, height: 300)
                            .background(Color.init(UIColor.init(white: 0.9, alpha: 0.8)))
                            .cornerRadius(10.0)
                        }
                }
            }
        }
    }
    
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
