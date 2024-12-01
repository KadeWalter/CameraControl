//
//  CameraView.swift
//  CameraControl
//
//  Created by Kade Walter on 11/27/24.
//

import SwiftUI

struct CameraView: View {
    
    @Binding var image: CGImage?
    
    var body: some View {
//        if let image {
//            Image(image, scale: 1, orientation: .up, label: Text(""))
//        } else {
//            ContentUnavailableView("No camera feed", systemImage: "xmark.circle.fill")
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(.black)
//        }
        GeometryReader { geometry in
            if let image = image {
                Image(decorative: image, scale: 1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width,
                           height: geometry.size.height)
            } else {
                ContentUnavailableView("No camera feed", systemImage: "xmark.circle.fill")
                    .frame(width: geometry.size.width,
                           height: geometry.size.height)
            }
        }
    }
}
