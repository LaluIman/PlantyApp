//
//  MainView.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 14/05/24.
//

import SwiftUI

struct MainView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    @ObservedObject var plantManager : PlantManager
    @State var selected : Plant? = nil
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                AutoCarousel(items: carouselItems)
                VStack{
                    VStack(alignment: .leading){
                        Text("Find by filter:")
                            .font(.system(size: 20)).bold()
                            .foregroundStyle(.green)
                            .padding(.horizontal, 15)
                        FilterView(plantManager: plantManager, tipes: Array(Set(plantManager.plants.map { $0.tipe })))
                    }
                    Divider()
                    LazyVGrid(columns: columns){
                        ForEach(filteredPlants, id: \.id){ plants in
                            ProductList(plant: plants)
                                .onTapGesture {
                                    selected = plants
                                }
                        }
                        .fullScreenCover(item: $selected) { plants in
                            DetailView(plant: plants)
                        }
                    }
                    .padding(.bottom, 30)
                    .padding(.horizontal)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            HStack {
                                Image(systemName: "leaf.fill")
                                    .padding(0)
                                    .font(.title)
                                    .foregroundStyle(.green)
                                Text("Planty")
                                    .foregroundStyle(.green)
                                    .font(.title).bold()
                                    .padding(.horizontal, -3)
                            }
                        }
                    }
        }
        
    }
    
    var filteredPlants: [Plant] {
            if let tipe = plantManager.selectedTipe {
                return plantManager.plants.filter { $0.tipe == tipe }
            } else {
                return plantManager.plants
            }
        }
    
}

#Preview {
    MainView(plantManager: PlantManager())
}
