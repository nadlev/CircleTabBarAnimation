//
//  TabPosition.swift
//  CircleTabBarAnimation
//
//  Created by Надежда Левицкая on 5/18/23.
//

import SwiftUI

struct TabPosition: PreferenceKey {
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}

extension View {
    @ViewBuilder
    func viewPosition(completion: @escaping (CGRect) -> ()) -> some View {
        self
            .overlay {
                GeometryReader {
                    let rect = $0.frame(in: .global)
                    
                    Color.clear
                        .preference(key: TabPosition.self, value: rect)
                        .onPreferenceChange(TabPosition.self, perform: completion)
                }
            }
    }
}
