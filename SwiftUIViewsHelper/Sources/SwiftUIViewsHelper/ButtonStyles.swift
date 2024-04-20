//
//  ButtonStyles.swift
//
//
//  Created by Saurabh Verma on 20/04/24.
//

import SwiftUI

@available(iOS 13.0, *)
struct FullScreenWideButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        if #available(iOS 15.0, *) {
            configuration.label
                .frame(maxWidth: .infinity, maxHeight: 44)
                .foregroundStyle(.white)
                .background(.red)
        } else {
            // TODO: Check how to set background color
            configuration.label
                .frame(maxWidth: .infinity, maxHeight: 44)
                .foregroundColor(.white)
        }
    }
}

@available(iOS 13.0, *)
struct ButtonStylesPreview: View {
    var body: some View {
        VStack {
            Button(action: {}, label: {
                Text("Button")
            })
            .buttonStyle(FullScreenWideButton())
        }
    }
}

@available(iOS 13.0, *)
#Preview {
    ButtonStylesPreview()
}
