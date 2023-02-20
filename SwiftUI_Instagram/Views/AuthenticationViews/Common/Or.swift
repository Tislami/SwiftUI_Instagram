//
//  Or.swift
//  SwiftUI_Instagram
//
//  Created by Tariyel Islami on 20.02.2023.
//

import Foundation
import SwiftUI


struct Or: View {
    var body: some View {
        HStack{
            AppDivider()
            Text("Or")
                .foregroundColor(.gray.opacity(0.5))
                .padding(.horizontal,32)
            
            AppDivider()
        }
        .frame(maxWidth: .infinity)
    }
}
