/*
 * This file is part of the SDWebImage package.
 * (c) DreamPiggy <lizhuoli1126@126.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

import Foundation
import SwiftUI

#if os(macOS)
public typealias PlatformImage = NSImage
#else
public typealias PlatformImage = UIImage
#endif

extension Image {
    init(platformImage: PlatformImage) {
        #if os(macOS)
        self.init(nsImage: platformImage)
        #else
        self.init(uiImage: platformImage)
        #endif
    }
}

#if os(macOS)
public typealias PlatformView = NSView
#endif
#if os(iOS) || os(tvOS)
public typealias PlatformView = UIView
#endif
#if os(watchOS)
public typealias PlatformView = WKInterfaceObject
#endif

#if os(macOS)
typealias PlatformViewRepresentable = NSViewRepresentable
typealias PlatformViewRepresentableContext = NSViewRepresentableContext
#endif
#if os(iOS) || os(tvOS)
typealias PlatformViewRepresentable = UIViewRepresentable
typealias PlatformViewRepresentableContext = UIViewRepresentableContext
#endif
#if os(watchOS)
typealias PlatformViewRepresentable = WKInterfaceObjectRepresentable
typealias PlatformViewRepresentableContext = WKInterfaceObjectRepresentableContext
#endif
