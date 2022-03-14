//
//  Buttons.swift
//  ReadBookApp
//
//  Created by Duong Huy on 14/03/2022.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack{
            
            Spacer()
            
            Button {
                
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
         
                Button {
       
                } label: {
                    Image(systemName: "chevron.down")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.12941177189350128,
                                               green: 0.7215686440467834,
                                               blue: 0.572549045085907))
                        .frame(width: 40, height: 40)
                        .background(Color(red: 1, green: 1, blue: 1))
                }
            
        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
