//
//  SignUpView.swift
//  ReadBookApp
//
//  Created by Như Phan on 3/4/22.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Image_Title()
            UserInput(email: $email, username: $username, password: $password)
            Buttons(email: $email, username: $username, password: $password)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
