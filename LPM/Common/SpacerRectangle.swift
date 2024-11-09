//
//  SpacerRectangle.swift
//  LPM
//
//  Created by Julien PORTOLAN on 18/10/2024.
//

import SwiftUI

struct SpacerRectangle: View {
    var width: CGFloat
    var height: CGFloat

    init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }

    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .opacity(0.0)
    }
}
