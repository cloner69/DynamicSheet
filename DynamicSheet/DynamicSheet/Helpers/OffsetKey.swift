//
//  OffsetKey.swift
//  DynamicSheet
//
//  Created by Adrian Suryo Abiyoga on 20/02/25.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
