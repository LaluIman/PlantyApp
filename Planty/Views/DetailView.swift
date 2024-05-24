//
//  DetailView.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 16/05/24.
//

import SwiftUI

struct DetailView: View {
    let plant: Plant
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                VStack{
                    ZStack{
                        Image(plant.latar)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .padding()
                            .blur(radius: 2)
                        Image(plant.gambar)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 320)
                            .padding(.top, 150)
                    }
                    .padding(.bottom)
                    VStack{
                        HStack {
                            Image(systemName: "leaf.fill")
                                .font(.system(size: 40, weight: .heavy))
                                .foregroundStyle(.green)
                                .padding(.vertical, -5)
                            Text(plant.nama)
                                .font(.system(size: 40, weight: .heavy))
                                .foregroundStyle(.green)
                                .padding()
                        }
                        .padding(.top)
                        
                            ZStack{
                                Capsule()
                                    .fill(Color(.secondarySystemBackground))
                                    .frame(width: 360)
                                HStack{
                                    HStack{
                                        Image(systemName: "thermometer.medium")
                                            .foregroundStyle(.red)
                                        Text(plant.temperatur)
                                    }
                                    .font(.system(size: 30)).bold()
                                    .padding()
                                    HStack{
                                        Image(systemName: "drop.fill")
                                            .foregroundStyle(.blue)
                                        Text(plant.penyiraman)
                                    }
                                    .font(.system(size: 30)).bold()
                                }
                            }
                        
                        
                            Text("Deskripsi")
                                .font(.title).bold()
                        
                        VStack{
                            Text(plant.detail)
                                .font(.system(size: 17))
                                .padding(.top, 5)
                            
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top)
                }
            }
                   
        .navigationBarItems(leading: Button(action: {
            }) {
                HStack{
                    Image(systemName: "arrow.left.circle.fill")
                          .foregroundStyle(.green)
                      .font(.title)
                      .onTapGesture{dismiss()}
                    Text("Back")
                        .font(.title2).bold()
                        .foregroundStyle(.green)
                }
            })
        .toolbar(content: {
            Text(plant.nama)
                .font(.title).bold()
        })
        }
    }
}

#Preview {
    DetailView( plant: Plant(
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
