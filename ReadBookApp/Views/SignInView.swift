//
//  SignInView.swift
//  ReadBookApp
//
//  Created by Như Phan on 3/4/22.
//

import SwiftUI

var view = UILabel()
struct SignInView: View {
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var hide = false
    
    var body: some View {
        VStack {
            ZStack {
                Ellipse()
                    .fill(Color(#colorLiteral(red: 0.40392157435417175, green: 0.7764706015586853, blue: 0.8313725590705872, alpha: 1)))
                    .frame(width: 364, height: 322)
                    .offset(x: 150, y: -80)
                
                Ellipse()
                    .fill(Color(#colorLiteral(red: 0.3019607961177826, green: 0.7450980544090271, blue: 0.7843137383460999, alpha: 1)))
                    .frame(width: 358, height: 322)
                    .offset(x: 108, y: -112)
                
                Image(uiImage: #imageLiteral(resourceName: "signin"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 409, height: 378)
                    .clipShape(RoundedRectangle(cornerRadius: 400))
                    .frame(width: 409, height: 378)
                    .offset(x: -100, y: -60)
            }.padding(.bottom, -37)
            
            Text("D R E A M E R S")
                .font(.system(size: 45))
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.129, green: 0.722, blue: 0.573))
                .frame(maxWidth: .infinity)
                .padding(.bottom, -5)
            
            Text("- WORDS HAVE POWER - ")
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.72, blue: 0.57, alpha: 1)))
                .tracking(4).multilineTextAlignment(.center)
                .padding(.all, 10)
            
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
                    Text("ĐĂNG NHẬP")
                        .font(.custom("Poppins Regular", size: 15))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.75)
                        .frame(width: 173, height: 43)
                        .background((Color(#colorLiteral(red: 0.12941177189350128, green: 0.7215686440467834, blue: 0.572549045085907, alpha: 1))))
                        .cornerRadius(16)
                }
            )
            
            VStack {
                RoundedRectangle(cornerRadius: 1)
                    .fill(Color(#colorLiteral(red: 0.12941177189350128, green: 0.7215686440467834, blue: 0.572549045085907, alpha: 1)))
                    .frame(width: 170, height: 0.5)
                    
                Text("Quên mật khẩu?")
                    .font(.custom("Poppins Regular", size: 15))
                    .foregroundColor(Color(#colorLiteral(red: 0.71, green: 0.71, blue: 0.71, alpha: 1)))
            }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.down")
                    .font(.largeTitle).foregroundColor(Color(#colorLiteral(red: 0.12941177189350128, green: 0.7215686440467834, blue: 0.572549045085907, alpha: 1)))
                    .frame(width: 42, height: 42)
                    .background((Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                }
            )
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
