//
//  SearchNotYetView.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 21/05/24.
//

import SwiftUI

struct SearchNotYetView: View {
    var body: some View {
        VStack{
            Image("none")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 200)
            Text("Type to find a plant!")
                .padding()
                .font(.title).bold()
                .foregroundStyle(.green)
        }
        .padding(.top, 200)
    }
}

#Preview {
    SearchNotYetView()
}
