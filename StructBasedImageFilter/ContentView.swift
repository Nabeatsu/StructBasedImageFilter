//
//  ContentView.swift
//  StructBasedImageFilter
//
//  Created by tanabe.nobuyuki on 2019/11/27.
//  Copyright © 2019 tanabe.nobuyuki. All rights reserved.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    @State private var currentFilter = CIFilter.sepiaTone()
    @State private var inputImage: UIImage?
    @State private var filterIntensity = 0.5
    @State private var image: Image?
    
    let context = CIContext()
    
    var body: some View {
        let intensity = Binding<Double>(
            get: {
                self.filterIntensity
        },
            set: {
                self.filterIntensity = $0
                self.applyProcessing()
        }
        )
        return VStack {
            image?
                .resizable()
                .aspectRatio(contentMode: .fit)
            Slider(value: intensity)
            Button(action: {
                self.loadImage()
            }) {
                Text("Button")
            }        }
    }
    
    func loadImage() {
        inputImage = UIImage(named: "画像読み込み")
        image = Image(uiImage: inputImage!)
        guard let inputImage = inputImage else { return }
        let beginImage = CIImage(image: inputImage)
        currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
        applyProcessing()
    }
    
    func applyProcessing() {
        currentFilter.intensity = Float(filterIntensity)
        guard let outputImage = currentFilter.outputImage else { return }
        if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
            let uiImage = UIImage(cgImage: cgimg)
            image = Image(uiImage: uiImage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
