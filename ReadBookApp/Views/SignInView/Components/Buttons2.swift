//
//  Buttons2.swift
//  ReadBookApp
//
//  Created by Duong Huy on 14/03/2022.
//

import SwiftUI

struct Buttons2: View {
    var body: some View {
        VStack{
            
            Spacer()
            
            Button {
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

            Spacer()
            
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
            
            Spacer()
        
            Button {
            }label: {
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

struct Buttons2_Previews: PreviewProvider {
    static var previews: some View {
        Buttons2()
    }
}
