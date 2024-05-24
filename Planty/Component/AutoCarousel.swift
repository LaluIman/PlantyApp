//
//  AutoCarousel.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 17/05/24.
//

import SwiftUI

struct AutoCarousel: View {
            let items: [CarouselItem]
            
            @State private var currentIndex = 0
            @State private var timer: Timer?
            
            var body: some View {
                TabView(selection: $currentIndex) {
                    ForEach(items.indices, id: \.self) { index in
                                    VStack {
                                        Image(items[index].imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 300)
                                            .clipped()
                                    }
                                    .tag(index)
                        
                                }
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .frame(width: 400, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .onAppear {
                    startTimer()
                }
                .onDisappear {
                    stopTimer()
                }
            }
            
            private func startTimer() {
                timer = Timer.scheduledTimer(withTimeInterval: 4, repeats: true) { _ in
                    withAnimation {
                        currentIndex = (currentIndex + 1) % items.count
                    }
                }
            }
            
            private func stopTimer() {
                timer?.invalidate()
                timer = nil
            }
        }

    


#Preview {
    AutoCarousel(items: carouselItems)
}
