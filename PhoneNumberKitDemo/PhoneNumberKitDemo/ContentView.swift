//
//  ContentView.swift
//  PhoneNumberKitDemo
//
//  Created by Vyacheslav Razumeenko on 01.05.2025.
//

import SwiftUI
import PhoneNumberKit

struct ContentView: View {
    @State private var number: String = ""

    var body: some View {
        VStack {
            PhoneTextField(
                withDefaultPickerUI: true,
                withFlag: true,
                withPrefix: true,
                withExamplePlaceholder: true,
                text: self.$number
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
