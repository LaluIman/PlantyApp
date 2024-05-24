//
//  ContentView.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 14/05/24.
//

import SwiftUI

struct TabViews: View {
    @State private var tabSelection = 1
    var body: some View {
        TabView(selection: $tabSelection){
            MainView(plantManager: PlantManager())
                .preferredColorScheme(.light)
                .tag(1)
            SearchView(plantManager: PlantManager())
                .preferredColorScheme(.light)
                .tag(2)
            AuthorView()
                .preferredColorScheme(.light)
                .tag(3)
            
        }

        .overlay(alignment:.bottom){
            CustomTabView(tabSelection: $tabSelection)
        }
    }
}

#Preview {
    TabViews()
}
