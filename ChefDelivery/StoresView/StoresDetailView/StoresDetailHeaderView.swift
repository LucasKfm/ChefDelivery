//
//  StoresDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Lucas on 25/08/24.
//

import SwiftUI

struct StoresDetailHeaderView: View {
    
    let store: StoreType
    
    var body: some View {
        VStack {
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(store.name)
                    .font(.title)
                    .bold()
                Spacer()
                Image(store.logoImage)
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            
            HStack {
                Text(store.location)
                Spacer()
                ForEach(1...store.stars, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.caption2)
                }
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
        }
    }
}

struct StoresDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        StoresDetailHeaderView(store: storesMock[0])
    }
}
