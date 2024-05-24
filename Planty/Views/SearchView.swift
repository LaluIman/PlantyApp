//
//  SearchView.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 14/05/24.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var plantManager: PlantManager
    @State var selected: Plant? = nil
    @State private var searchTerm: String = ""

    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Find Plant", text: $searchTerm)
                        .textFieldStyle(PlainTextFieldStyle())
                }
                .padding(15)
                .font(.system(size: 25)).bold()
                .background(Color(.systemGray6))
                .foregroundStyle(.green)
                .cornerRadius(12)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .padding(.horizontal, 20)
                

                if searchTerm.isEmpty {
                    SearchNotYetView()
                } else {
                        ForEach(plantManager.plants.filter { $0.nama.lowercased().contains(searchTerm.lowercased()) }) { plant in
                            SearchProductList(plant: plant)
                                .onTapGesture {
                                    selected = plant
                                }
                        }
                        .fullScreenCover(item: $selected) { plant in
                            DetailView( plant: plant)
                        }
                    }
                }
            }
            .navigationBarItems(leading:
                    Text("Search")
                .font(.system(size: 30)).bold()
                .padding(.horizontal)
            )
        }
    }
}


#Preview {
    SearchView(plantManager: PlantManager())
}
