//
//  ReusableTextField.swift
//  JobSpot
//
//  Created by Vikram Singh Depawat on 04/07/25.
//

import SwiftUI

struct ReusableTextField: View {
    var title: String
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    @State var isPasswordVisible: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)
            
            ZStack(alignment: .trailing) {
                if isSecure && !isPasswordVisible {
                    SecureField(placeholder, text: $text)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                } else {
                    TextField(placeholder, text: $text)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }
                
                if isSecure {
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.gray)
                            .padding(.trailing, 12)
                    }
                }
            }
        }
    }
}

#Preview {
    ReusableTextField(title: "Email Id", placeholder: "Email Id", text: .constant("abc@gmail.com"))
}
