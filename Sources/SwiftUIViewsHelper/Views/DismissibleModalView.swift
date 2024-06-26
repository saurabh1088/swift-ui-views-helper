//
//  DismissibleModalView.swift
//
//
//  Created by Saurabh Verma on 05/05/24.
//

import SwiftUI

@available(iOS 16.0, *)
public struct DismissibleModalView<Content: View>: View {
    let content: Content
    @Environment(\.dismiss) private var dismiss
    
    public init(@ViewBuilder _ content: @escaping () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        NavigationStack {
            VStack {
                content
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    dismissButton
                }
            }
        }
    }
    
    @ViewBuilder
    private var dismissButton: some View {
        Button {
            dismiss()
        } label: {
            Text("Dismiss")
        }
    }
}

@available(iOS 16.0, *)
#Preview {
    DismissibleModalView {
        Text("Dismissible Modal View")
    }
}

// TODO: This view works when presented modally. If attempted to pushed to navigation stack, it doesn't works.
