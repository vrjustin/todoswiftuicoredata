//
//  String+Extensions.swift
//  TodoSwiftUI
//
//  Created by Justin Maronde on 9/12/24.
//

import Foundation

extension String {
    var isEmptyOrWhitespace: Bool {
        return trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
