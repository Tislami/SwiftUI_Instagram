//
//  AppTextField.swift
//  SwiftUI_Instagram
//
//  Created by Tariyel Islami on 20.02.2023.
//

import SwiftUI

struct AppTextField: View {
    @State var title : String
    @Binding var text : String
    @State var isSecure : Bool = false
  //  let onSubmit : () -> Bool
    
    var body: some View {
        Group{
            if isSecure{
                SecureField(title ,text: $text)
                
            }else{
                TextField(title, text: $text)
            }
        }
        .frame(height: 45)
        .textFieldStyle(PlainTextFieldStyle())
        .padding(.horizontal, 16)
        .background(.gray.opacity(0.10))
        .cornerRadius(8)
        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black.opacity(0.15)))
       // .onSubmit { onSubmit() }
    }
}
