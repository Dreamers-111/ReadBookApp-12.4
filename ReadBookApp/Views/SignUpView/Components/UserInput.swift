//
//  UserInput.swift
//  ReadBookApp
//
//  Created by Duong Huy on 14/03/2022.
//

import SwiftUI

struct UserInput: View {
    
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var hide = false
    
    var body: some View {
        VStack{
            
            Spacer()
            
            TextField("Email", text: $email)
                .padding(10)
                .padding(.leading, 15)
                .overlay(
                    RoundedRectangle(cornerRadius: 300)
                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                )
                .frame(width: 286, height: 43)

            Spacer()
      
            TextField("Tài khoản", text: $username)
                .padding(.all, 10)
                .padding(.leading, 15)
                .overlay(
                    RoundedRectangle(cornerRadius: 300)
                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                )
                .frame(width: 286, height: 43)
            
            Spacer()
       
            ZStack(alignment:.trailing) {
                    if self.hide{
                        TextField("Mật khẩu", text: $password)
                            .padding(.all, 10)
                            .padding(.leading, 15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 300)
                                    .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                            )
                            .frame(width: 286, height: 43)
                    } else {
                        SecureField("Mật khẩu", text: $password)
                                .padding(.all, 10)
                                .padding(.leading, 15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 300)
                                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                                    )
                                .frame(width: 286, height: 43)
                    }
                Button {
                    self.hide.toggle()
                } label: {
                        Image(systemName: self.hide ? "eye.fill":"eye.slash.fill")
                            .foregroundColor(self.hide ? Color.green : Color.secondary)
                            .padding(.trailing,10)
                        }
            }
            
            Spacer()

        }
        
    }
}

struct UserInput_Previews: PreviewProvider {
    static var previews: some View {
        UserInput()
    }
}
