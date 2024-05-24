//
//  FilterView.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 20/05/24.
//

import SwiftUI

struct FilterView: View {
    @ObservedObject var plantManager: PlantManager
    let tipes: [String]
    let buttonWidth: CGFloat = 100

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                if plantManager.selectedTipe != nil {
                    Button(action: {
                        withAnimation(.easeInOut) {
                            plantManager.filterPlants(by: nil)
                        }
                    }) {
                        Image(systemName: "xmark")
                            .padding(8)
                            .background(Color.gray.opacity(0.1))
                            .foregroundColor(.red).bold()
                            .cornerRadius(50)
                    }
                }
                ForEach(tipes, id: \.self) { tipe in
                    Button(action: {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0.4)) {
                            plantManager.filterPlants(by: tipe)
                        }
                    }) {
                        Text(tipe)
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .frame(width: buttonWidth)
                            .foregroundStyle(plantManager.selectedTipe == tipe ? Color.white : Color.black)
                            .background(plantManager.selectedTipe == tipe ? Color.green : Color.gray.opacity(0.1))
                            .cornerRadius(15)
                            .fontWeight(.semibold)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
