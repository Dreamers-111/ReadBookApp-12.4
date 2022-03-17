//
//  ContentView.swift
//  ReadBookApp
//
//  Created by Duong Huy on 04/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            SignInView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
