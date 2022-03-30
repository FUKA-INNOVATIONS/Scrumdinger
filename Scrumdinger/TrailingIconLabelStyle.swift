//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by FUKA on 30.3.2022.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    
    // The configuration parameter is a LabelStyleConfiguration,
    // which contains the icon and title views. These views represent the label’s image and label text.
    func makeBody(configuration: Configuration) -> some View { // The system calls this method for each Label instance in a view hierarchy where this style is the current label style.
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

// Because you defined the label style as a static property, you can call it using leading-dot syntax, which makes your code more readable.
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
