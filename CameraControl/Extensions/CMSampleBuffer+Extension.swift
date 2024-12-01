//
//  Untitled.swift
//  CameraControl
//
//  Created by Kade Walter on 11/27/24.
//

import AVFoundation
import CoreImage

extension CMSampleBuffer {
    var cgImage: CGImage? {
        let pixelBuffer: CVPixelBuffer? = CMSampleBufferGetImageBuffer(self)
        guard let imagePixelBuffer = pixelBuffer else {
            return nil
        }
        return CIImage(cvPixelBuffer: imagePixelBuffer).cgImage
    }
}
