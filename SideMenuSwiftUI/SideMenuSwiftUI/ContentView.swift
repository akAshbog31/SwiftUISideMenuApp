//
//  ContentView.swift
//  SideMenuSwiftUI
//
//  Created by AKASH BOGHANI on 02/03/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @State private var showMenu: Bool = false
    @State private var selectedTab: Int = 0
    
    //MARK: - Body
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab) {
                    VStack {
                        Spacer()
                        
                        Text("Dashboard")
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.green.opacity(0.2))
                    .tag(0)
                    
                    VStack {
                        Spacer()
                        
                        Text("Performance")
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.red.opacity(0.2))
                    .tag(1)
                    
                    VStack {
                        Spacer()
                        
                        Text("Profile")
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.blue.opacity(0.2))
                    .tag(2)
                    
                    VStack {
                        Spacer()
                        
                        Text("Search")
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.brown.opacity(0.2))
                    .tag(3)
                    
                    VStack {
                        Spacer()
                        
                        Text("Notifications")
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.yellow.opacity(0.2))
                    .tag(4)
                }
                
                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
    
    //MARK: - Functions
}

#Preview {
    ContentView()
}
