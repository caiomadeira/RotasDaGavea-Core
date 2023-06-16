//
//  PUCMedia.swift
//  
//
//  Created by caiomadeira on 15/06/23.
//

import Foundation
import UIKit
import AVFAudio

struct PUCMediaCollection {
    var name: String?
    var media: [MediaType]?
    
}

enum MediaType {
    case image
    case gif
    case video
    case audio
    
    enum FileMediaType: {
        switch self {
        case .image:
            return UIImage
        case .gif:
            return UIImage
        case .video:
            return URL(fileURLWithPath: String).lastPathComponent
        case .audio:
            return URL(fileURLWithPath: String).lastPathComponent
        }
    }
}
