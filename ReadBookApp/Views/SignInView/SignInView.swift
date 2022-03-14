//
//  SignInView.swift
//  ReadBookApp
//
//  Created by Như Phan on 3/4/22.
//

import SwiftUI


struct SignInView: View {

    
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
                    Image2()
                    Title2()
                    UserInput2()
                    Buttons2()
                }
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity)
            .ignoresSafeArea(edges: .top)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
