//
//  StoreDetailProductsView.swift
//  ChefDelivery
//
//  Created by Lucas on 25/08/24.
//

import SwiftUI

struct StoreDetailProductsView: View {
    
    let products: [ProductType]
    @State private var productSelected: ProductType?
    
    var body: some View {
        VStack (alignment: .leading){
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding()
            
            ForEach(products) { product in
                Button {
                    productSelected = product
                } label: {
                    StoreDetailProductItem(product: product)
                }
                .sheet(item: $productSelected) { product in
                    ProductDetailView(product: product)
                }
            }
        }
    }
}

struct StoreDetailProductsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailProductsView(products: storesMock[0].products)
    }
}
    
