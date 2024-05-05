//
//  DismissibleView.swift
//
//
//  Created by Saurabh Verma on 05/05/24.
//

import SwiftUI

@available(iOS 16.0, *)
struct DismissibleView<Content: View>: View {
    let content: Content
    @Environment(\.dismiss) private var dismiss
    
    init(@ViewBuilder _ content: @escaping () -> Content) {
        self.content = content()
    }
    
    var body: some View {
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
    DismissibleView {
        Text("Dismissible View")
    }
}
