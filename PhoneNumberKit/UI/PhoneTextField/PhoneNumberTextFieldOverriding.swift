//
//  PhoneNumberTextFieldOverriding.swift
//  Tollroad
//
//  Created by developer on 20.02.2024.
//

import SwiftUI

// MARK: - PhoneNumberTextFieldOverridingDelegate
protocol PhoneNumberTextFieldOverridingDelegate: AnyObject { }

private typealias CurrentView = PhoneNumberTextFieldOverriding

// MARK: - PhoneNumberTextFieldOverriding
public class PhoneNumberTextFieldOverriding: PhoneNumberTextField {
    typealias Delegate = PhoneNumberTextFieldOverridingDelegate

    // MARK: - Public Properties
    public override var defaultRegion: String {
        get { _defaultRegion }
        set { } // exists for backward compatibility
    }

    weak var textFieldOverridingDelegate: Delegate?

    // MARK: - Private Properties
    private let _defaultRegion: String

    // MARK: - Public Init
    public init(defaultRegion: String) {
        self._defaultRegion = defaultRegion
        super.init(frame: .zero)
    }

    required init(coder aDecoder: NSCoder) { preconditionFailure() }
}
