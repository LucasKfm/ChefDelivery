//
//  StoreDetailProductItem.swift
//  ChefDelivery
//
//  Created by Lucas on 25/08/24.
//

import SwiftUI

struct StoreDetailProductItem: View {
    let product: ProductType
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text(product.name)
                    .bold()
                Text(product.description)
                    .foregroundColor(.black.opacity(0.5))
                    .multilineTextAlignment(.leading)
                Text("\(product.formattedPrice)")
            }
            Spacer()
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .frame(width: 120, height: 120)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 20,
                    x: 6,
                    y: 8
                )
        }
        .foregroundColor(.black)
        .padding()
    }
}

struct StoreDetailProductItem_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailProductItem(product: storesMock[0].products[0])
    }
}
