//
//  SignUpView.swift
//  ReadBookApp
//
//  Created by Như Phan on 3/4/22.
//

import SwiftUI

struct SignUpView: View {



    var body: some View {
        VStack {
            Image_Title()
            UserInput()
            Buttons()
            
          
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity)
        .ignoresSafeArea(edges: .top)
     

    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
