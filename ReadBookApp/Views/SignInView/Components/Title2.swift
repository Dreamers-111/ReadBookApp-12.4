//
//  Title2.swift
//  ReadBookApp
//
//  Created by Duong Huy on 14/03/2022.
//

import SwiftUI

struct Title2: View {
    var body: some View {
        VStack{
            
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

struct Title2_Previews: PreviewProvider {
    static var previews: some View {
        Title2()
    }
}
