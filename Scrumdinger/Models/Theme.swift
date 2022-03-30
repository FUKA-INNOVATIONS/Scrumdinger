//
//  Theme.swift
//  Scrumdinger
//
//  Created by FUKA on 30.3.2022.
//

/**Although you’re not creating a view in this section, you add Color properties from the SwiftUI framework. SwiftUI treats colors as View instances that you can add directly to a view hierarchy.**/

// Named colors in the asset catalog must match their references in code, so make sure to spell each case correctly.

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    var mainColor: Color { // This property initializes a color from the asset catalog.
        Color(rawValue) // creates a color using the enumeration’s rawValue.
    }
}

