//
//  PhoneTextFieldCoordinator.swift
//  Tollroad
//
//  Created by developer on 21.02.2024.
//

import SwiftUI

// MARK: - MapViewCoordinator
extension PhoneTextField {
    public final class ViewCoordinator: NSObject, PhoneNumberTextFieldOverriding.Delegate {
        private var view: PhoneTextField

        // MARK: - Init
        public init(view: PhoneTextField) { self.view = view }

        // MARK: - PhoneNumberTextFieldOverriding.Delegate
    }
}
