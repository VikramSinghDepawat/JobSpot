//
//  CircleButtonView.swift
//  JobSpot
//
//  Created by Vikram Singh Depawat on 04/07/25.
//

import SwiftUI

struct CircleArrowView: View {
    var body: some View {
        Circle()
            .fill(Color.bg)
            .frame(width: 60, height: 60)
            .overlay {
                Image(systemName: "arrow.right")
                    .imageScale(.large)
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                    .bold()
            }
    }
}

#Preview {
    CircleArrowView()
}
