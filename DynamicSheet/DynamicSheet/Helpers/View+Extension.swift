//
//  View+Extension.swift
//  DynamicSheet
//
//  Created by Adrian Suryo Abiyoga on 20/02/25.
//

import SwiftUI

extension View {
    @ViewBuilder
    func heightChangePreference(completion: @escaping (CGFloat) -> ()) -> some View {
        self
            .overlay {
                GeometryReader(content: { geometry in
                    Color.clear
                        .preference(key: SizeKey.self, value: geometry.size.height)
                        .onPreferenceChange(SizeKey.self, perform: { value in
                            completion(value)
                        })
                })
            }
    }
    
    @ViewBuilder
    func minXChangePreference(completion: @escaping (CGFloat) -> ()) -> some View {
        self
            .overlay {
                GeometryReader(content: { geometry in
                    Color.clear
                        .preference(key: OffsetKey.self, value: geometry.frame(in: .global).minX)
                        .onPreferenceChange(OffsetKey.self, perform: { value in
                            completion(value)
                        })
                })
            }
    }
}
