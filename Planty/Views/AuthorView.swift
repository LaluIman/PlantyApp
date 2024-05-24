//
//  AuthorView.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 15/05/24.
//

import SwiftUI

struct AuthorView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Circle()
                        .fill(.green)
                        .frame(width: 200, height: 200)
                    Image("imanmemoji2")
                        .resizable()
                        .frame(width: 180, height: 180)
                }
                VStack{
                    Text("Lalu Iman Abdullah")
                        .font(.title).bold()
                    Text("Front-end & iOS Developer")
                        .fontWeight(.semibold)
                        .foregroundStyle(.green)
                }
                .padding()
                VStack{
                    Text("""
                        HELLO! 👋 I’m Lalu Iman Abdullah. I'm a programmer & a designer. Based on Indonesia📍 Born in the island of Kalimantan🏝️ More specific on the east. My hobbies is coding🧑‍💻, designing🎨 & badminton🏸.
                        """)
                    .padding(.horizontal, 35)
                    .multilineTextAlignment(.center)
                }
            }
            .frame(height: 500, alignment: .top)
        }
    }
}

#Preview {
    AuthorView()
}
