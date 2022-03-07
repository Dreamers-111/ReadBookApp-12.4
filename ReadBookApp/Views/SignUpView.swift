//
//  SignUpView.swift
//  ReadBookApp
//
//  Created by Như Phan on 3/4/22.
//

import SwiftUI

struct SignUpView: View {
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var hide = false

    var body: some View {
        VStack {
            Text("D R E A M E R S")
                .font(.system(size: 35))
                .fontWeight(.heavy)
                .tracking(4)
                .foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.72, blue: 0.57, alpha: 1)))
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing], 20)
                .padding(.bottom, -1)
            
            Image(uiImage: #imageLiteral(resourceName: "signin"))
                .resizable()
                .frame(width: 298, height: 322, alignment: .center)
                .cornerRadius(300)
                .overlay(
                    RoundedRectangle(cornerRadius: 300)
                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                )
            
            Text("- WORDS HAVE POWER - ")
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.72, blue: 0.57, alpha: 1)))
                .tracking(4).multilineTextAlignment(.center)
                .padding(.all, 10)
                
            TextField("Email", text: $email)
                .padding(.all, 10)
                .background(Color(.white))
                .padding(.horizontal, 15)
                .overlay(
                    RoundedRectangle(cornerRadius: 300)
                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                )
                .frame(width: 286, height: 43)
                .padding(.bottom, 10)
            
            TextField("Tài khoản", text: $username)
                .padding(.all, 10)
                .background(Color(.white))
                .padding(.horizontal, 15)
                .overlay(
                    RoundedRectangle(cornerRadius: 300)
                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                )
                .frame(width: 286, height: 43)
                .padding(.bottom, 10)
            
            ZStack(alignment:.trailing) {
                    if self.hide{
                        TextField("Mật khẩu", text: $password)
                            .padding(.all, 10)
                            .background(Color(.white))
                            .padding(.horizontal, 15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 300)
                                    .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                            )
                            .frame(width: 286, height: 43)
                    } else {
                            SecureField("Mật khẩu", text: $password)
                                .padding(.all, 10)
                                .background(Color(.white))
                                .padding(.horizontal, 15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 300)
                                        .stroke(Color(red: 0.129, green: 0.722, blue: 0.573), lineWidth: 1)
                                    )
                                .frame(width: 286, height: 43)
                    }
                    Button(action: {self.hide.toggle()}) {
                        Image(systemName: self.hide ? "eye.fill":"eye.slash.fill")
                            .foregroundColor((self.hide == true) ? Color.green : Color.secondary)
                            .padding(.trailing,10)
                    }
            }.padding(.bottom, 10)
            
            Button(action: {
                
            }, label: {
                    Text("ĐĂNG KÝ")
                        .font(.custom("Poppins Regular", size: 15))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.75)
                        .frame(width: 173, height: 43)
                        .background((Color(#colorLiteral(red: 0.12941177189350128, green: 0.7215686440467834, blue: 0.572549045085907, alpha: 1))))
                        .cornerRadius(16)
                }
            ).padding(.bottom,10)
            
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.up")
                    .font(.largeTitle)
                    .foregroundColor(Color(#colorLiteral(red: 0.12941177189350128, green: 0.7215686440467834, blue: 0.572549045085907, alpha: 1)))
                    .frame(width: 42, height: 42)
                    .multilineTextAlignment(.center)
                    .background((Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                }
            )
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
