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
        VStack(spacing:0) {
            titleSignUp()
            imageSignUp().padding()
            subtitleSighUp()
            UserInput(email: $email, username: $username, password: $password)
                .padding(.top)
                .padding(.horizontal)
                .padding(.horizontal)
                .padding(.horizontal)
            Buttons(email: $email, username: $username, password: $password)
                .padding(.top)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct titleSignUp: View {
    var body: some View {
        Text("D R E A M E R S")
            .font(.system(size: 36))
            .fontWeight(.heavy)
            .foregroundColor(Color(red: 0.13, green: 0.72, blue: 0.57))
            .tracking(4)
            .multilineTextAlignment(.center)
    }
}

struct imageSignUp: View {
    var body: some View {
        Image("signup")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(300)
            .overlay(
                RoundedRectangle(cornerRadius: 300)
                    .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
            )
    }
}

struct subtitleSighUp: View {
    var body: some View {
        Text("- WORDS HAVE POWER - ")
            .font(.system(size: 14))
            .fontWeight(.medium)
            .foregroundColor(Color(red: 0.13, green: 0.72, blue: 0.57))
            .tracking(4)
            .multilineTextAlignment(.center)
    }
}

struct UserInput: View {
    
    @Binding  var email: String
    @Binding  var username: String
    @Binding  var password: String
    @State private var hide = true
    
    var body: some View {
        VStack(spacing:0){
            //Email
            TextField("Email", text: $email)
                .font(.system(size: 16))
                .padding(.all,10)
                .padding(.horizontal)
                .overlay(
                    RoundedRectangle(cornerRadius: 300)
                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                )
                .padding(.bottom)
            
            //Username
            TextField("Tài khoản", text: $username)
                .font(.system(size: 16))
                .padding(.all,10)
                .padding(.horizontal)
                .overlay(
                    RoundedRectangle(cornerRadius: 300)
                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                )
                .padding(.bottom)
            
            //Password
            HStack(spacing:0){
                if hide{
                    SecureField("Mật khẩu", text: $password)
                        .font(.system(size: 16))
                }
                else {
                    TextField("Mật khẩu", text: $password)
                        .font(.system(size: 16))
                }
              
                   
                
                Button {
                    hide.toggle()
                } label: {
                    Image(systemName: hide ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(hide ?  Color.secondary : Color.green )
                        .padding(.leading)
                }
                
            }
            .padding(.all,10)
            .padding(.horizontal)
            .overlay(
                RoundedRectangle(cornerRadius: 300)
                    .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
            )
            .padding(.bottom)
        }
    }
}

struct Buttons: View {
    
    @Binding  var email: String
    @Binding  var username: String
    @Binding  var password: String
    @State private var selection: Int? = nil
    
    var body: some View {
        VStack(spacing:0){
            Button {
                print("email: \(email), username: \(username), password: \(password)")
            } label: {
                Text("ĐĂNG KÝ")
                    .font(.custom("Poppins Regular", size: 16))
                    .foregroundColor(.white)
                    .tracking(1)
                    .padding(.all,10)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .background(Color(red: 0.12941177189350128,
                                      green: 0.7215686440467834,
                                      blue: 0.572549045085907))
                    .cornerRadius(16)
                
            }
    
            Spacer()
            
            NavigationLink(tag: 1, selection: $selection) {
                SignInView()
            } label: {
                Button {
                    self.selection = 1
                } label: {
                    Image(systemName: "chevron.down")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.12941177189350128,
                                               green: 0.7215686440467834,
                                               blue: 0.572549045085907))
                        
                }
            }
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


