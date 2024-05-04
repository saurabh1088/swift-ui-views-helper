//
//  ButtonStyles.swift
//
//
//  Created by Saurabh Verma on 20/04/24.
//

import SwiftUI

@available(iOS 13.0, *)
public struct FullScreenWideButton: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
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

// TODO: Figure out button width and padding.
@available(iOS 16.4, *)
public struct RoundedCorners: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(.white)
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 50))
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
            
            if #available(iOS 15.0, *) {
                Button(action: {}, label: {
                    Text("Button")
                })
                .buttonStyle(.bordered)
            }
            
            if #available(iOS 16.4, *) {
                Button(action: {}) {
                    Text("Button")
                }
                .buttonStyle(.roundedCorners)
            }
        }
    }
}

@available(iOS 13.0, *)
#Preview {
    ButtonStylesPreview()
}
