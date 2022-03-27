//
//  ReadBookAppApp.swift
//  ReadBookApp
//
//  Created by Duong Huy on 04/03/2022.
//

import SwiftUI
import Firebase

@main
struct ReadBookAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    init(){
        FirebaseApp.configure()
    }
}
