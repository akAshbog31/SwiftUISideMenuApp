//
//  SideMenuHeaderVIew.swift
//  SideMenuSwiftUI
//
//  Created by AKASH BOGHANI on 02/03/24.
//

import SwiftUI

struct SideMenuHeaderVIew: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 50, height: 50)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 3) {
                Text("Akash Boghani")
                    .font(.headline)
                
                Text("akashboghani111@gmail.com")
                    .font(.footnote)
                    .tint(.gray)
            }
        }
    }
    
    //MARK: - Functions
}

#Preview {
    SideMenuHeaderVIew()
}
