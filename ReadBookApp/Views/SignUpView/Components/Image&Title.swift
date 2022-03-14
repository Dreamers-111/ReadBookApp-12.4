//
//  Image&Title.swift
//  ReadBookApp
//
//  Created by Duong Huy on 14/03/2022.
//

import SwiftUI

struct Image_Title: View {
    var body: some View {
        VStack{
            
            Spacer()
            
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

struct Image_Title_Previews: PreviewProvider {
    static var previews: some View {
        Image_Title()
    }
}
