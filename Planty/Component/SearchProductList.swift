//
//  SearchProductList.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 20/05/24.
//

import SwiftUI

struct SearchProductList: View {
    let plant: Plant
    var body: some View {
        HStack{
            Image(plant.gambar)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(7)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
            Spacer()
            VStack(alignment: .trailing){
                Text(plant.nama)
                    .font(.title).bold()
                    .foregroundStyle(.green)
                    .padding(.bottom, -5)
                Text(plant.tipe)
                    .font(.title3).bold()
                    .foregroundStyle(.white)
                    .padding(.vertical, 5)
                    .padding(.horizontal)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .padding()
            
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 1)
        .padding(.horizontal)
       
    }
}

#Preview {
    SearchProductList(plant: Plant(
        nama:"Adiantum",
        gambar:"adi",
        latar: "livingroom",
        temperatur:"10°c",
        penyiraman:"2/minggu",
        tipe: "Indoor",
        detail:"""
            Adiantum termasuk dalam genus tanaman sehingga memiliki banyak spesies berbeda. Secara umum, tanaman paku ini memiliki karakteristik sendiri yang berbeda dari jenis paku-pakuan yang lain. Mulai dari daunnya, Adiantum memiliki bentuk daun yang memanjang dan cenderung bulat. Pada bagian bawah daun, terdapat sorus atau kluster-kluster yang berisi kelompok spora. Spora tersebut dilindungi oleh indusium dengan tangkai berwarna hitam mengkilap. Sistem pertulangan daun suplir ini sangat unik dan terlihat seperti sporofil atau menyirip.
        
    """
    ))
}
