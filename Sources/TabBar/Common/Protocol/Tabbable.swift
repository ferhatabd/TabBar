//
//  MIT License
//
//  Copyright (c) 2021 Tamerlan Satualdypov
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import Foundation
import SwiftUI

/// Icon types
/// - `system`: Loads a system image name
/// - `remote`: Asset downloaded from a local URL
public enum AssetType {
    case system(name: String)
    case asset(String, Bundle)
    case image(Image)
    case remote(url: URL?)
}

/**
 A type that represents an item of your `TabBar` component.
 */
public protocol Tabbable: Hashable {
    
    /// Icon name of `TabBar's` item.
    var icon: AssetType { get }
    
    /// Selected icon name of `TabBar's` item.
    var selectedIcon: AssetType { get }
    
    /// Title of `TabBar's` item.
    var title: String { get }
}


public extension Tabbable {
    var selectedIcon: AssetType {
        return self.icon
    }
}
