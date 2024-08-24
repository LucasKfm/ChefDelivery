//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Lucas on 24/08/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var quantity = 1;
    
    var body: some View {
        VStack(spacing: 16) {
            VStack (alignment: .leading){
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
                VStack (alignment: .leading, spacing: 8){
                    Text(product.name)
                        .font(.title)
                    .fontWeight(.bold)
                    
                    Text(product.description)
            
                    
                    Text(product.formattedPrice)
                        .font(.title3)
                        .bold()
                    
                    
                    
                } .padding(20)
            }
            
            Spacer()
            
            Text("Quantidade")
                .font(.title3)
                .fontWeight(.bold)
            
            HStack {
                Button {
                    if (quantity > 1) {
                        quantity -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                Text("\(quantity)")
                Button {
                    quantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }
            
            Button(action: {
                print("O botão foi pressionado")
            }, label: {
                HStack {
                    Image(systemName: "cart")
                    Text("Adicionar ao Carrinho")
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .bold()
                .background(Color("ColorRed"))
                .foregroundColor(.white)
                .cornerRadius(32)
                .shadow(color: Color("ColorRedDark").opacity(0.5),radius: 10, x: 6, y: 8)
            })
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}
