//
//  LoginView.swift
//  SwiftUI_Instagram
//
//  Created by Tariyel Islami on 20.02.2023.
//


import Foundation
import SwiftUI


struct LoginView: View {
    
    @StateObject var viewModel =
    AutenticationViewModel(autenticationRepository: AutenticationRepository())
    @State var buttonEnabled = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack(spacing: 16){
                    Image("InstagramLogo").padding(.bottom,32)
                    
                    VStack{
                        AppTextField(title: "E mail", text: $viewModel.email)
                        AppTextField(title: "Password", text: $viewModel.password,isSecure: true)
                    }
                    ForgotPassword()
                    
                    AuthenticationButton(
                        title: "Log in",
                        onClick: viewModel.login
                    ).padding(.vertical,32)
                    
                    LoginWithFacebook()
                    Or().padding(.vertical,32)
                    SignUp()
                    AppDivider().padding(.top,32)
                }
                .padding(.vertical,32)
                .padding(.horizontal,16)
                .alert(isPresented: $viewModel.isError){
                            Alert(
                                title: Text("Error"),
                                message: Text(viewModel.errorMessage ?? ""),
                                dismissButton: .default(Text("OK"))
                            )
                        }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct ForgotPassword: View {
    var body: some View {
        NavigationLink(destination: EmptyView()){
            Text("Forgot password ?")
                .font(.system(size: 14))
        }
        .frame(maxWidth: .infinity,alignment: .trailing)
    }
}

struct LoginWithFacebook: View {
    var body: some View {
        NavigationLink(destination: EmptyView()){
            Label("Log in with Facebook", image: "FbIcon")
        }
    }
}

struct SignUp: View {
    var body: some View {
        HStack{
            Text("Don't have an account ? ")
                .foregroundColor(.gray.opacity(0.5))
            
            NavigationLink(destination: EmptyView()){
                Text("Sign up")
            }
        }
    }
}
