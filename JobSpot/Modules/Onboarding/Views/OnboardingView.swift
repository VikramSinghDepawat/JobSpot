//
//  OnboardingView.swift
//  JobSpot
//
//  Created by Vikram Singh Depawat on 02/07/25.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("JobSpot")
                    .font(.system(size: 18, weight: .bold))
                    .frame(width: 73, height: 23)
                    .padding(.horizontal, 20)
            }
            
            Spacer()
            
            Image("onborading")
                .resizable()
                .scaledToFill()
                .frame(width: 311, height: 279)
            
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading) {
                    Text("Find Your")
                        .modifier(ReusableText())
                    Text("Dream Job")
                        .modifier(ReusableText(textColor: .textColorYellow, fontSize: 40, fontWeight: .bold))
                        .underline()
                    Text("Here!")
                        .modifier(ReusableText())
                }
                
                Text("Explore all the most exciting job roles based on your interest and study major.")
                    .font(.subheadline)
                    .foregroundStyle(.textcolor2)
            }
            HStack {
                Spacer()
                Button(action: {}) {
                    CircleArrowView()
                }
            }
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    OnboardingView()
}
