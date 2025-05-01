//
//  PhoneTextField.swift
//  Tollroad
//
//  Created by developer on 20.02.2024.
//

import SwiftUI

private typealias CurrentView = PhoneTextField

// MARK: - PhoneTextField
public struct PhoneTextField: UIViewRepresentable {
    public typealias UIViewType = PhoneNumberTextFieldOverriding

    // MARK: - Constants
    public static let defaultRegion: String = PhoneNumberUtility.defaultRegionCode()
    public static let defaultMaxDigits: Int = 10

    // MARK: - Public Properties
    let defaultRegion: String
    let maxDigits: Int?
    let textColor: Color
    let withDefaultPickerUI: Bool
    let withFlag: Bool
    let withPrefix: Bool
    let withExamplePlaceholder: Bool
    @Binding var text: String

    // MARK: - Public Init
    public init(
        defaultRegion: String = defaultRegion,
        maxDigits: Int? = defaultMaxDigits,
        textColor: Color = .black,
        withDefaultPickerUI: Bool = false,
        withFlag: Bool = false,
        withPrefix: Bool = false,
        withExamplePlaceholder: Bool = false,
        text: Binding<String>
    ) {
        self.defaultRegion = defaultRegion
        self.maxDigits = maxDigits
        self.textColor = textColor
        self.withDefaultPickerUI = withDefaultPickerUI
        self.withFlag = withFlag
        self.withPrefix = withPrefix
        self.withExamplePlaceholder = withExamplePlaceholder
        self._text = .init(projectedValue: text)
    }

    // MARK: - UIViewRepresentable
    public func makeUIView(context: Context) -> UIViewType { .init(defaultRegion: defaultRegion) }

    public func updateUIView(_ uiView: UIViewType, context: Context) { update(uiView, context: context) }

    public func makeCoordinator() -> ViewCoordinator { .init(view: self) }
}

// MARK: - Private Methods
private extension CurrentView {
    func update(_ uiView: UIViewType, context: Context) {
        uiView.textFieldOverridingDelegate = context.coordinator
        uiView.maxDigits = maxDigits
        uiView.textColor = .init(textColor)
        uiView.withDefaultPickerUI = withDefaultPickerUI
        uiView.withFlag = withFlag
        uiView.withPrefix = withPrefix
        uiView.withExamplePlaceholder = withExamplePlaceholder
    }
}
