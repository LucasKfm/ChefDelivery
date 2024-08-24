//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Lucas on 24/08/24.
//

import SwiftUI

struct StoresContainerView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Lojas")
            VStack (alignment: .leading, spacing: 20){
                ForEach(storesMock) { store in
                    NavigationLink {
                        StoreDetailView(store: store)
                    } label: {
                        StoresItemView(storeItem: store)
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .foregroundColor(.black)
    }
}

struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView()
            .previewLayout(.sizeThatFits)
    }
}
