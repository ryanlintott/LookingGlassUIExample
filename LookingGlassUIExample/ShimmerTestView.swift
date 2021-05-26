//
//  ShimmerTestView.swift
//  LookingGlassUIExample
//
//  Created by Ryan Lintott on 2021-05-25.
//

import LookingGlassUI
import SwiftUI

struct ShimmerTestView: View {
    var body: some View {
        VStack {
            Color.black
                .shimmer(color: .red, background: .blue)
            
            ShimmerView(color: .red, background: .blue)
        }
    }
}

struct ShimmerTestView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerTestView()
    }
}
