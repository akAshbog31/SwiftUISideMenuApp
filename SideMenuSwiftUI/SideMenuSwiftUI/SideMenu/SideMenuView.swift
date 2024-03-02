//
//  SideMenuView.swift
//  SideMenuSwiftUI
//
//  Created by AKASH BOGHANI on 02/03/24.
//

import SwiftUI

struct SideMenuView: View {
    //MARK: - Properties
    @Binding var isShowing: Bool
    @State private var selectedOptions: SideMenuModel?
    @Binding var selectedTab: Int
    
    //MARK: - Body
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .ignoresSafeArea()
                    .opacity(0.2)
                    .onTapGesture { isShowing.toggle() }
                
                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        SideMenuHeaderVIew()
                        
                        VStack {
                            ForEach(SideMenuModel.allCases, id: \.id) { option in
                                Button {
                                    onOptionTap(option)
                                } label: {
                                    SideMenuCell(option: option, selecetdSideMenuOption: $selectedOptions)
                                }
                            }
                        }
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    .frame(width: UIScreen.main.bounds.width * 0.7,
                           alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))
            }
        }
        .animation(.easeInOut, value: isShowing)
    }
    
    //MARK: - Functions
    private func onOptionTap(_ option: SideMenuModel) {
        selectedOptions = option
        selectedTab = option.rawValue
        isShowing = false
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedTab: .constant(0))
}
