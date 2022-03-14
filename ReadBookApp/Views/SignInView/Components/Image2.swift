//
//  Image2.swift
//  ReadBookApp
//
//  Created by Duong Huy on 14/03/2022.
//

import SwiftUI

struct Image2: View {
    var body: some View {
        Image("signin")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 340)
            .clipShape(Circle())
            .offset(x:-100,y:-10)
            .padding(.bottom,-10)
    }
}

struct Image2_Previews: PreviewProvider {
    static var previews: some View {
        Image2()
    }
}
