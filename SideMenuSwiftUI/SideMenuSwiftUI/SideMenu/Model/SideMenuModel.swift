//
//  SideMenuModel.swift
//  SideMenuSwiftUI
//
//  Created by AKASH BOGHANI on 02/03/24.
//

import Foundation

enum SideMenuModel: Int, CaseIterable {
    case dashboard
    case performance
    case profile
    case search
    case notifications
    
    var title: String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .performance:
            return "Performance"
        case .profile:
            return "Profile"
        case .search:
            return "Search"
        case .notifications:
            return "Notifications"
        }
    }
    
    var imageName: String {
        switch self {
        case .dashboard:
            return "filemenu.and.cursorarrow"
        case .performance:
            return "chart.bar"
        case .profile:
            return "person"
        case .search:
            return "magnifyingglass"
        case .notifications:
            return "bell"
        }
    }
}

extension SideMenuModel: Identifiable {
    var id: Int { self.rawValue }
}
