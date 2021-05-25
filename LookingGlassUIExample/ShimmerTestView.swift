//
//  ShimmerTestView.swift
//  LookingGlassUIExample
//
//  Created by Ryan Lintott on 2021-05-25.
//

import SwiftUI

struct ShimmerTestView: View {
    var body: some View {
        Color.black
            .shimmer(color: .red, background: .blue)
    }
}

struct ShimmerTestView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerTestView()
    }
}
