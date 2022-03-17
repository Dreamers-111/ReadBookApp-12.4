//
//  SignInView.swift
//  ReadBookApp
//
//  Created by Như Phan on 3/4/22.
//

import SwiftUI


struct SignInView: View {
    
    @State private  var username = ""
    @State private  var password = ""
    
    var body: some View {
        
            ZStack{
                
                Circle()
                    .fill(Color(red: 0.40392157435417175,
                                green: 0.7764706015586853,
                                blue: 0.8313725590705872))
                    .frame(height: 400)
                    .offset(x:100,y:-330)
                
                
                Circle()
                    .fill(Color(red: 0.3019607961177826,
                                green: 0.7450980544090271,
                                blue: 0.7843137383460999))
                    .frame(height: 400)
                    .offset(x:30,y:-360)
                
                VStack{
                    Title_Image2()
                    UserInput2(username: $username, password: $password)
                    Buttons2(username: $username, password: $password)
                }
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity)
            .ignoresSafeArea(edges: .top)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
       
        
    }
}

struct Title_Image2: View {
    var body: some View {
        VStack{
            
            
            Image("signin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 340)
                .clipShape(Circle())
                .offset(x:-100,y:-10)
                .padding(.bottom,-10)
            
            Spacer()
            
            Text("D R E A M E R S")
                .font(.system(size: 45))
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.129,
                                       green: 0.722,
                                       blue: 0.573))
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Text("- WORDS HAVE POWER - ")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.13,
                                       green: 0.72,
                                       blue: 0.57))
                .tracking(4)
                .multilineTextAlignment(.center)
            
            Spacer()
            
        }
    }
}

struct UserInput2: View {
    @Binding var username:String
    @Binding var password:String
    @State private var hide = false
    
    var body: some View {
        VStack{
            
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

struct Buttons2: View {
    
    @Binding var username:String
    @Binding var password:String
    @State private var selection: Int? = nil
    
    var body: some View {
        VStack{
            
            Spacer()
            
            NavigationLink(tag: 3, selection: $selection) {
                HomeView()
            } label: {
                Button {
                    if username == "" && password == "" {
                        self.selection = 3
                    }
                } label: {
                        Text("ĐĂNG NHẬP")
                            .font(.custom("Poppins Regular", size: 15))
                            .foregroundColor(.white)
                            .tracking(0.75)
                            .frame(width: 173, height: 43)
                            .background(Color(red: 0.12941177189350128,
                                               green: 0.7215686440467834,
                                               blue: 0.572549045085907))
                            .cornerRadius(16)
                    }
            }

            
            

            Spacer()
            
            NavigationLink(tag: 2, selection: $selection) {
                SignUpView()
            } label: {
                Button {
                    self.selection = 2
                } label: {
                    VStack {
                        RoundedRectangle(cornerRadius: 1)
                            .fill(Color(red: 0.12941177189350128,
                                        green: 0.7215686440467834,
                                        blue: 0.572549045085907))
                            .frame(width: 170, height: 0.5)
                            
                        Text("Bạn chưa có tài khoản?")
                            .font(.custom("Poppins Regular", size: 15))
                            .foregroundColor(Color(red: 0.71,
                                                   green: 0.71,
                                                   blue: 0.71))
                    }
                }
            }
            
            
            
            Spacer()
            
            NavigationLink(tag: 1, selection: $selection) {
                SignUpView()
            } label: {
                Button {
                    self.selection = 1
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.12941177189350128,
                                               green: 0.7215686440467834,
                                               blue: 0.572549045085907))
                        .frame(width: 40, height: 40)
                }
            }

        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
