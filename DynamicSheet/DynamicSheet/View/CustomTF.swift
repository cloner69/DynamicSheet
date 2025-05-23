//
//  CustomTF.swift
//  DynamicSheet
//
//  Created by Adrian Suryo Abiyoga on 20/02/25.
//

import SwiftUI

/// Custom TextField
struct CustomTF: View {
    var hint: String
    @Binding var text: String
    var icon: String
    var isPassword: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 12, content: {
            if isPassword {
                SecureField(hint, text: $text)
            } else {
                TextField(hint, text: $text)
            }
            
            Divider()
        })
        .overlay(alignment: .trailing) {
            Image(systemName: icon)
                .foregroundStyle(.gray)
        }
    }
}
