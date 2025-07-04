//
//  AppButton.swift
//  JobSpot
//
//  Created by Vikram Singh Depawat on 04/07/25.
//

import SwiftUI

struct AppButton: View {
    var title: String = "Default Button"
    var iconName: String? = nil
    var textColor: Color = .white
    var cornerRadius: CGFloat = 10
    var backgroundColor: Color = .bg
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                if let iconName {
                    Image(iconName)
                        .foregroundStyle(textColor)
                }
                
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundStyle(textColor)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 50)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
    }
}

#Preview {
    AppButton()
}
