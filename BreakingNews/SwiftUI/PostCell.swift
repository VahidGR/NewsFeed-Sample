//
//  PostCell.swift
//  BreakingNews
//
//  Created by Vahid Ghanbarpour on 10/22/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    
    var title: String?
    var imagePath: String?
        
    var body: some View {
        VStack {
            Image(imagePath ?? "placeholder").resizable()
                .resizable()
                .frame(width: nil, height: 250)
                .cornerRadius(10.0)
            Text(title ?? "Hello World! Hello World! Hello World!")
                .font(.body).foregroundColor(.black)
                .frame(width: nil, height: 50, alignment: .center)
        }
    }

}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
