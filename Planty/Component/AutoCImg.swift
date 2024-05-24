//
//  AutoCImg.swift
//  Planty
//
//  Created by Lalu Iman Abdullah on 17/05/24.
//

import SwiftUI

struct CarouselItem: Identifiable {
    let id = UUID()
    let imageName: String
}

let carouselItems = [
    CarouselItem(imageName: "image1"),
    CarouselItem(imageName: "image2"),
    CarouselItem(imageName: "image3")
]
