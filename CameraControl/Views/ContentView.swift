//
//  ContentView.swift
//  CameraControl
//
//  Created by Kade Walter on 11/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = ViewModel()
    
    var body: some View {
        CameraView(image: $viewModel.currentFrame)
    }
}
