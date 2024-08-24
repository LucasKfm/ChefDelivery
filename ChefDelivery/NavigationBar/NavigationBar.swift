//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Lucas on 19/08/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button("Rua Vereador Francisco Corrales, 379") {
                
            }
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell.badge")
            }
            .font(.title3)
            .foregroundColor(.red)
        }
    }
}

#Preview {
    NavigationBar()
        .previewLayout(.sizeThatFits)
        .padding(16)
}
