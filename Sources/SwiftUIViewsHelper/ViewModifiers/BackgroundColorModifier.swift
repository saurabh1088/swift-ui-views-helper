//
//  BackgroundColorModifier.swift
//
//
//  Created by Saurabh Verma on 20/04/24.
//

import SwiftUI

@available(iOS 13.0, *)
public struct BackgroundColorModifier: ViewModifier {
    
    private var bgColor: Color
    
    public init(bgColor: Color) {
        self.bgColor = bgColor
    }
    
    public func body(content: Content) -> some View {
        if #available(iOS 17.0, *) {
            content
                .containerRelativeFrame([.horizontal, .vertical])
                .background(bgColor)
        } else {
            content
            // TODO: Figure out way to achive same for pre iOS 17 versions
        }
    }
}

@available(iOS 13.0, *)
struct BackgroundColorModifierPreview: View {
    var body: some View {
        Text("Hello, World!")
            .fullScreenBackgroundWith(color: .red)
    }
}

@available(iOS 13.0, *)
#Preview {
    BackgroundColorModifierPreview()
}
