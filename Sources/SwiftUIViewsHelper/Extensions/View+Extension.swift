//
//  File.swift
//  
//
//  Created by Saurabh Verma on 20/04/24.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
extension View {
    public func fullScreenBackgroundWith(color: Color) -> some View {
        modifier(BackgroundColorModifier(bgColor: color))
    }
}
