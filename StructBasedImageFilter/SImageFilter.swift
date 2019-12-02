//
//  SImageFilter.swift
//  StructBasedImageFilter
//
//  Created by tanabe.nobuyuki on 2019/11/27.
//  Copyright © 2019 tanabe.nobuyuki. All rights reserved.
//

//
//import Foundation
//
//struct Image {
//    var name: String
//    
//    func withFilter(_ filter: ImageFilter) -> Self {
//        try! filter.transforms.first!.apply(to: self)
//    }
//}
//
//enum Icon {
//    case drama
//}
//
//struct ImageFilter {
//    var name: String
//    var icon: Icon
//    var transforms: [ImageTransform]
//}
//
//struct ImageTransform {
//    let closure: (Image) throws -> Image
//    
//    func apply(to image: Image) throws -> Image {
//        try closure(image)
//    }
//    
//    static var contrastBoost: Self {
//        ImageTransform { image in
//            return Image(name: "contrastBoost")
//        }
//    }
//
//    static func portrait(withZoomMultipler multiplier: Double) -> Self {
//        ImageTransform { image in
//            return Image(name: "portrait")
//        }
//    }
//
//    static func grayScale(withBrightness brightness: BrightnessLevel) -> Self {
//        ImageTransform { image in
//            return Image(name: "grayscale")
//        }
//    }
//    
//    enum BrightnessLevel {
//        case high
//        case low
//    }
//}
//extension ImageFilter {
//    static var dramatic: Self {
//        ImageFilter(
//            name: "Dramatic",
//            icon: .drama,
//            transforms: [
//                .portrait(withZoomMultipler: 2.1),
//                .contrastBoost,
//                .grayScale(withBrightness: .low)
//            ]
//        )
//    }
//}
//
//
//
//
//
//
//
//

