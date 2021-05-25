//
//  ContentView.swift
//  LookingGlassUIExample
//
//  Created by Ryan Lintott on 2021-05-18.
//

import LookingGlassUI
import SwiftUI

struct ContentView: View {
    @State private var updateInterval: TimeInterval = 0.1
    @State private var disabled: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            TabView {
                Color.clear
                    .overlay(
                        VStack {
                            ArrowRotationView(.reflection)
                            
                            ArrowRotationView(.window)
                        }
                    )
                    .tabItem {
                        Image(systemName: "arrow.up.and.person.rectangle.portrait")
                        Text("Reflection")
                    }
                
                Color.clear
                    .overlay(
                        ArrowRotationView(.window)
                    )
                    .tabItem {
                        Image(systemName: "arrow.up.and.person.rectangle.portrait")
                        Text("Window")
                    }
                
                ShimmerTestView()
                    .tabItem {
                        Image(systemName: "sparkle")
                        Text("ShimmerTest")
                    }
                
                ShimmerExampleView()
                    .tabItem {
                        Image(systemName: "sparkles")
                        Text("Shimmer")
                    }
                
                Color.clear
                    .overlay(
                        TextReflectionExampleView()
                    )
                    .tabItem {
                        Image(systemName: "arrow.up")
                        Text("0°")
                    }
                
                Color.clear
                    .overlay(
                        TextReflectionExampleView(pitch: .degrees(90))
                    )
                    .tabItem {
                        Image(systemName: "arrow.forward")
                        Text("90°")
                    }
                
                Color.clear
                    .overlay(
                        TextReflectionExampleView(pitch: .degrees(45))
                    )
                    .tabItem {
                        Image(systemName: "arrow.up.forward")
                        Text("45°")
                    }
            }
            
            SettingsView(updateInterval: $updateInterval, disabled: $disabled)
        }
        .motionManager(updateInterval: updateInterval, disabled: disabled)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
