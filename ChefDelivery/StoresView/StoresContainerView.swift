//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Lucas on 24/08/24.
//

import SwiftUI

struct StoresContainerView: View {
    
    @State private var ratingFilter = 0
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Lojas")
                Spacer()
                Menu {
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar Filtro")
                    }
                    Divider()
                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            if (rating > 1) {
                                Text("\(rating) estrelas ou mais")
                            } else {
                                Text("\(rating) estrela ou mais")
                            }
                        }
                    }
                } label: {
                    Label("Menu", systemImage: "chart.bar.horizontal.page")
                }
            }
            VStack (alignment: .leading, spacing: 20){
                if filteredStores.isEmpty {
                    Text ("Nenhum resultado encontrado.")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { store in
                        NavigationLink {
                            StoreDetailView(store: store)
                        } label: {
                            StoresItemView(storeItem: store)
                        }
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
