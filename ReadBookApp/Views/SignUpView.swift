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
            UserInput(email: $email, username: $username, password: $password).padding()
            Buttons(email: $email, username: $username, password: $password)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
        
    }
}

struct Image_Title: View {
    var body: some View {
        VStack{
            Text("D R E A M E R S")
                .font(.system(size: 35))
                .fontWeight(.heavy)
                .tracking(4)
                .foregroundColor(Color(red: 0.13, green: 0.72, blue: 0.57))
                .multilineTextAlignment(.center)
       
            
            Spacer()
            
            Image("signup")
                .resizable()
                .frame(width: 298, height: 322)
                .cornerRadius(300)
                .overlay(
                    RoundedRectangle(cornerRadius: 300)
                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                )
            
            Spacer()
  
            Text("- WORDS HAVE POWER - ")
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.13, green: 0.72, blue: 0.57))
                .tracking(4)
                .multilineTextAlignment(.center)
            
            Spacer()
        }
    }
}

struct UserInput: View {
    
    @Binding  var email: String
    @Binding  var username: String
    @Binding  var password: String
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

struct Buttons: View {
    
    @Binding  var email: String
    @Binding  var username: String
    @Binding  var password: String
    @State private var selection: Int? = nil
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Button {
                print("email: \(email), username: \(username), password: \(password)")
            } label: {
                Text("ĐĂNG KÝ")
                    .font(.custom("Poppins Regular", size: 15))
                    .tracking(0.75)
                    .foregroundColor(.white)
                    .frame(width: 173, height: 43)
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
                        .frame(width: 40, height: 40)
                        .background(Color.white)
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
