//
//  File.swift
//  
//
//  Created by Saurabh Verma on 07/05/24.
//

import Foundation
import SwiftUI

// MARK: -----------------------------------------------------------------------
// MARK: Previews DismissibleModalView
@available(iOS 16.0, *)
#Preview("DismissibleModalView light mode") {
    DismissibleModalView {
        Text("DismissibleModalView light mode")
    }
    .preferredColorScheme(.light)
}

@available(iOS 16.0, *)
#Preview("DismissibleModalView dark mode") {
    DismissibleModalView {
        Text("DismissibleModalView dark mode")
    }
    .preferredColorScheme(.dark)
}

@available(iOS 17.0, *)
#Preview("DismissibleModalView landscape left", traits: .landscapeLeft) {
    DismissibleModalView {
        Text("DismissibleModalView landscape left")
    }
}

// MARK: -----------------------------------------------------------------------
// MARK: Previews BackgroundColorModifier
@available(iOS 16.0, *)
#Preview("Full screen red") {
    VStack {
        Text("Full background red")
        Text("Covering safe area top and bottom as well")
    }
    .fullScreenBackgroundWith(color: .red)
}

