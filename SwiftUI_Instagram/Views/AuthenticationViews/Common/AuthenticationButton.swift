//
//  AuthenticationButton.swift
//  SwiftUI_Instagram
//
//  Created by Tariyel Islami on 20.02.2023.
//

import SwiftUI

struct AuthenticationButton: View {
    let title: String
    let onClick : () -> Void
    
    var body: some View {
        Button(action: onClick){
            Text(title)
                .font(.headline)
                .foregroundColor(Color("OnPrimary"))
                .frame(maxWidth: .infinity, maxHeight: 50 ,alignment: .center)
                .background(Color("Primary"))
                .cornerRadius(5)
        }
    }
}
