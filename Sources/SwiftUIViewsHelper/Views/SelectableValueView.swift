//
//  SelectableValueView.swift
//
//
//  Created by Saurabh Verma on 13/05/24.
//

import SwiftUI

@available(iOS 17.0, *)
public struct SelectableValueView: View {
    private var label: String
    private var values: [String]
    @Binding private var selection: String?
    
    public init(label: String, values: [String], selection: Binding<String?>) {
        self.label = label
        self.values = values
        self._selection = selection
    }
    
    private var title: String {
        if let selection = selection {
            return selection
        }
        return label
    }
    
    public var body: some View {
        VStack {
            NavigationLink(title) {
                SelectableValueOptionsView(values: values, selectedValue: $selection)
            }
            .buttonStyle(.fullScreenWide)
        }
    }
}

@available(iOS 17.0, *)
struct SelectableValueOptionsView: View {
    private var values: [String]
    @Binding var selectedValue: String?
    @State private var localSelection: String?
    @Environment(\.dismiss) var dismiss
    
    init(values: [String], selectedValue: Binding<String?>) {
        self.values = values
        self._selectedValue = selectedValue
    }
    
    var body: some View {
        VStack {
            List(values, id: \.self, selection: $localSelection) { value in
                Text(value)
            }
        }
        .onChange(of: localSelection, initial: false, { oldValue, newValue in
            selectedValue = localSelection
            dismiss()
        })
    }
}


@available(iOS 17.0, *)
#Preview {
    NavigationStack {
        SelectableValueView(label: "Select",
                            values: ["Value 1",
                                     "Value 2",
                                     "Value 3"], 
                            selection: .constant("Select"))
    }
}
