//
//  StoresItemView.swift
//  ChefDelivery
//
//  Created by Lucas on 24/08/24.
//

import SwiftUI

struct StoresItemView: View {
    let storeItem: StoreType
    
    var body: some View {
        HStack {
            Image(storeItem.logoImage)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Text(storeItem.name)
                .font(.subheadline)
            Spacer()
        }
    }
}

struct StoresItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoresItemView(storeItem: storesMock[0]).previewLayout(.sizeThatFits)
    }
}
