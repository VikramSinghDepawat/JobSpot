//
//  AppButton.swift
//  JobSpot
//
//  Created by Vikram Singh Depawat on 04/07/25.
//

import SwiftUI

struct AppButton: View {
    var title: String = "Default Button"
    var backgroundColor: Color = .bg
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    AppButton()
}
