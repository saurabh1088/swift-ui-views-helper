//
//  BackgroundColorModifier.swift
//
//
//  Created by Saurabh Verma on 20/04/24.
//

import SwiftUI

@available(iOS 13.0, *)
struct BackgroundColorModifier: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 17.0, *) {
            content
                .containerRelativeFrame([.horizontal, .vertical])
                .background(Color.red)
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
            .fullScreenBackgroundColorRed()
    }
}

@available(iOS 13.0, *)
#Preview {
    BackgroundColorModifierPreview()
}
