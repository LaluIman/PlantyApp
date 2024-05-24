//
//  ProductList.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 16/05/24.
//

import SwiftUI

struct ProductList: View {
    let plant: Plant
    var body: some View {
       
            RoundedRectangle(cornerRadius: 20)
                .fill(.ultraThickMaterial)
                .frame(width: 120, height: 140)
                .padding(.vertical,5)
                .shadow(radius: 2)
                .overlay{
                    VStack {
                        Image(plant.gambar)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 90)
                        Text(plant.nama)
                            .font(.system(size: 18)).bold()
                            .foregroundStyle(.green)
                            .lineLimit(1)
                            .multilineTextAlignment(.center)
                    }
                }
    }
}

#Preview {
    ProductList(plant: Plant(
        nama:"Adiantum",
        gambar:"adi",
        latar: "livingroom",
        temperatur:"10°c",
        penyiraman:"2/minggu",
        tipe: "Indoor",
        detail:"""
        Adiantum termasuk dalam genus tanaman sehingga memiliki
        banyak spesies berbeda. Secara umum, tanaman paku ini memiliki
        karakteristik sendiri yang berbeda dari jenis paku-pakuan yang lain.
        Mulai dari daunnya, Adiantum memiliki bentuk daun yang
        memanjang dan cenderung bulat. Pada bagian bawah daun,
        terdapat sorus atau kluster-kluster yang berisi kelompok spora.
        Spora tersebut dilindungi oleh indusium dengan tangkai berwarna
        hitam mengkilap. Sistem pertulangan daun suplir ini sangat unik dan
        terlihat seperti sporofil atau menyirip.
    
        Daun Adiantum akan bersisik halus setelah dewasa, sama seperti
        jenis paku-pakuan yang lain. Hanya saja, daun tanaman suplir ini
        akan tumbuh dari rizoma berbentuk melingkar ke dalam seperti
        tangkai biola atau disebut sebagai circinate vernation. Daun
        tersebut akan tumbuh dan membuka secara perlahan, serta
        termasuk dalam jenis daun majemuk. Bentuk daun suplir segitiga
        atau segiempat dengan helaian memanjang secara simetris. Yang
        membuat Adiantum unik dari paku-pakuan lain karena tanaman ini
        tidak bisa dibasahi dengan air. Hal ini karena tanaman suplir
        memiliki rambut-rambut halus di sekitar daun yang melindunginya
        dari air.
    """
    )
    )
}
