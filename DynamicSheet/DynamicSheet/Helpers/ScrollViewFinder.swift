//
//  ScrollViewFinder.swift
//  DynamicSheet
//
//  Created by Adrian Suryo Abiyoga on 20/02/25.
//

import SwiftUI

struct ScrollViewFinder: UIViewRepresentable {
    var enablePaging: Bool
    var disableScroll: Bool
    func makeUIView(context: Context) -> UIView {
        return .init()
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.06) {
            if let scrollView = uiView.superview?.superview?.superview as? UIScrollView {
                scrollView.isPagingEnabled = enablePaging
                scrollView.isScrollEnabled = !disableScroll
            }
        }
    }
}
