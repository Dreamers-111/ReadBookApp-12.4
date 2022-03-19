//
//  MenuView.swift
//  ReadBookApp
//
//  Created by Như Phan on 3/14/22.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack{
                Rectangle()
                    .fill(Color(#colorLiteral(red: 0.12941177189350128, green: 0.7215686440467834, blue: 0.572549045085907, alpha: 1)))
                    .frame(width: .infinity, height: 154)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.bottom, -10)
                HStack {
                    Image(uiImage: #imageLiteral(resourceName: "people"))
                        .resizable()
                        .frame(width: 42, height: 42)
                }
            }
           
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                    .frame(width: .infinity, height: 660)
            }
            
            Spacer()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
