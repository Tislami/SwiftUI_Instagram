//
//  RegistrationView.swift
//  SwiftUI_Instagram
//
//  Created by Tariyel Islami on 20.02.2023.
//

import SwiftUI

struct RegistrationView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var buttonEnabled = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack(spacing: 16){
                    Image("InstagramLogo").padding(.bottom,32)
                    
                    VStack{
                        AppTextField(title: "E mail", text: $email)
                        AppTextField(title: "Password", text: $password,isSecure: true)
                    }
                    
                    AuthenticationButton(
                        title: "Sign up",
                    onClick: {}
                    ).padding(.vertical,16)
                    
                    Or().padding(.bottom,32)
                    SignIn()
                    AppDivider().padding(.top,32)
                }
                .padding(.vertical,32)
                .padding(.horizontal,16)
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

struct SignIn: View {
    var body: some View {
        HStack{
            Text("Do you have an account ? ")
                .foregroundColor(.gray.opacity(0.5))
            
            NavigationLink(destination: EmptyView()){
                Text("Sign In")
            }
        }
    }
}
