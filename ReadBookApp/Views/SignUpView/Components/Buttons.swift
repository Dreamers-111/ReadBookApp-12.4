//
//  Buttons.swift
//  ReadBookApp
//
//  Created by Duong Huy on 14/03/2022.
//

import SwiftUI

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

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(email: Binding.constant(""), username: Binding.constant(""), password: Binding.constant(""))
    }
}
