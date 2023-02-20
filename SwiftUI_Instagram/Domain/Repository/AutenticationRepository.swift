//
//  AutenticationRepository.swift
//  SwiftUI_Instagram
//
//  Created by Tariyel Islami on 20.02.2023.
//

import Foundation
import FirebaseAuth
import Combine



class AutenticationRepository {
    func login(email: String, password: String) -> AnyPublisher<User, Error> {
        return Future<User, Error> { promise in
            Auth.auth().signIn(withEmail: email, password: password) { result, error in
                if let error = error {
                    promise(.failure(error))
                } else if let result = result {
                    if result.user.email != nil{
                        let user = User(id: result.user.uid, eMail: result.user.email!, name: result.user.displayName ?? "")
                        promise(.success(user))
                    }
                }
            }
        }.eraseToAnyPublisher()
    }
}
