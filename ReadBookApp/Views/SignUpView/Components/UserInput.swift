//
//  UserInput.swift
//  ReadBookApp
//
//  Created by Duong Huy on 14/03/2022.
//

import SwiftUI



struct UserInput_Previews: PreviewProvider {
    static var previews: some View {
        UserInput(email: Binding.constant(""), username: Binding.constant(""), password: Binding.constant(""))
    }
}
