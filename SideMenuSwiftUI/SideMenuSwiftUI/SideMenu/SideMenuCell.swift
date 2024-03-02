//
//  SideMenuCell.swift
//  SideMenuSwiftUI
//
//  Created by AKASH BOGHANI on 02/03/24.
//

import SwiftUI

struct SideMenuCell: View {
    //MARK: - Properties
    let option: SideMenuModel
    @Binding var selecetdSideMenuOption: SideMenuModel?
    
    private var isSelceted: Bool {
        selecetdSideMenuOption == option
    }
    
    //MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: option.imageName)
                .imageScale(.small)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
        }
        .padding(.leading)
        .foregroundStyle(isSelceted ? .blue : .primary)
        .frame(width: 216, height: 44)
        .background(isSelceted ? .blue.opacity(0.1) : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    //MARK: - Functions
}

#Preview {
    SideMenuCell(option: .dashboard, selecetdSideMenuOption: .constant(.dashboard))
}
