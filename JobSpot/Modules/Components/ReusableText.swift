//
//  ReusableText.swift
//  JobSpot
//
//  Created by Vikram Singh Depawat on 04/07/25.
//

import SwiftUI

struct ReusableText: ViewModifier {
    var textColor: Color = .textcolor1
    var fontSize: CGFloat = 40
    var fontWeight: Font.Weight = .bold
  
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize, weight: fontWeight))
            .foregroundStyle(textColor)
    }
}
