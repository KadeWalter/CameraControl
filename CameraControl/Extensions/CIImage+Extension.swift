//
//  CIImage+Extension.swift
//  CameraControl
//
//  Created by Kade Walter on 11/27/24.
//

import CoreImage

extension CIImage {
    var cgImage: CGImage? {
        let ciContext = CIContext()
        guard let cgImage = ciContext.createCGImage(self, from: self.extent) else {
            return nil
        }
        return cgImage
    }
}
