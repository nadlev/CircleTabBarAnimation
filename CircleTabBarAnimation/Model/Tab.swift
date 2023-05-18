//
//  Tab.swift
//  CircleTabBarAnimation
//
//  Created by Надежда Левицкая on 5/18/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case main = "Main"
    case settings = "Settings"
    case chat = "Chat"
    case activity = "Activity"
    
    var systemImage: String {
        switch self {
        case .main:
            return "house"
        case .settings:
            return "gear"
        case .chat:
            return "ellipsis.message"
        case .activity:
            return "bell"
        }
    }
    
    var index: Int {
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
}
