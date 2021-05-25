//
//  ShimmerExampleView.swift
//  ReflectiveUIExample
//
//  Created by Ryan Lintott on 2021-05-11.
//

import SwiftUI

struct ShimmerExampleView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1..<100, id: \.self) { i in
                    VStack {
                        Rectangle()
                            .fill(Color.goldDark)
                        
                        Text("Gold Text \(i)")
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                            .foregroundColor(.goldDark)
                            .padding()
                    }
                    .shimmer(color: .goldShimmer, background: .goldDark)
                }
            }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ShimmerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerExampleView()
    }
}
