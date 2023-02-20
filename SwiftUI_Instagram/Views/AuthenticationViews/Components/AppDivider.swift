//
//  AppDivider.swift
//  SwiftUI_Instagram
//
//  Created by Tariyel Islami on 20.02.2023.
//


import SwiftUI

struct AppDivider: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.gray.opacity(0.5))
            .frame(width: .infinity, height: 0.5)
    }
}

struct AppDivider_Previews: PreviewProvider {
    static var previews: some View {
        AppDivider()
    }
}
