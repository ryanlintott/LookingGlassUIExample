//
//  MotionManagerExample.swift
//  LookingGlassUIExample
//
//  Created by Ryan Lintott on 2022-03-28.
//

import LookingGlassUI
import SwiftUI

struct MotionManagerExample: View {
    @EnvironmentObject var motionManager: MotionManager
    
    var body: some View {
        List {
            Section(header: Text("Axis Vector and angle")) {
                data("Axis Vector x", motionManager.quaternion.axis.x)
                data("Axis Vector y", motionManager.quaternion.axis.y)
                data("Axis Vector z", motionManager.quaternion.axis.z)
                data("Angle (radians)", motionManager.quaternion.angle)
            }
            
            Section(header: Text("Rotation components")) {
                data("Pitch (radians)", motionManager.quaternion.pitch)
                data("Yaw (radians)", motionManager.quaternion.yaw)
                data("Roll (radians)", motionManager.quaternion.roll)
            }
        }
        .navigationTitle("MotionManager Data")
    }
    
    func data(_ label: String, _ value: Float) -> some View {
        Text("\(label): \(value)")
            .accessibilityLabel(label)
            .accessibilityValue(String(value))
            .accessibilityAddTraits(.updatesFrequently)
    }
}

struct MotionManagerExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MotionManagerExample()
                .motionManager(updateInterval: 0)
        }
    }
}
