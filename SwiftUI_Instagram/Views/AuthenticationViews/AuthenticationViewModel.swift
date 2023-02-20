//
//  AuthenticationViewModel.swift
//  SwiftUI_Instagram
//
//  Created by Tariyel Islami on 20.02.2023.
//


import Foundation
import Combine


class AutenticationViewModel : ObservableObject{
    
    private let autenticationRepository: AutenticationRepository
    private var cancellables = Set<AnyCancellable>()

    
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var isLoggedIn = false
    @Published var errorMessage: String?
    @Published var isError: Bool = false

    
    init(autenticationRepository: AutenticationRepository) {
        self.autenticationRepository = autenticationRepository
    }
    
    
    func login(){
        print("login clicked")
        autenticationRepository.login(email: email, password: password)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                if case let .failure(error) = completion {
                    self.errorMessage = error.localizedDescription
                    self.isError.toggle()
                    print("error \(error)")
                }
            } receiveValue: { user in
                self.isLoggedIn = true
                print("is logged in \(user.eMail)   \(user.id)")
            }
            .store(in: &cancellables)
    }
    
    func isValid() -> Bool{
        return true
    }
    
}




struct AlertItem: Identifiable {
    let id: UUID
    let message: String
}

