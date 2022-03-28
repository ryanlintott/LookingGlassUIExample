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
                Text("Axis Vector x: \(motionManager.quaternion.axis.x)")
                Text("Axis Vector y: \(motionManager.quaternion.axis.y)")
                Text("Axis Vector z: \(motionManager.quaternion.axis.z)")
                Text("Angle (radians): \(motionManager.quaternion.angle)")
            }
            
            Section(header: Text("Rotation components")) {
                Text("Pitch (radians): \(motionManager.quaternion.pitch)")
                Text("Yaw (radians): \(motionManager.quaternion.yaw)")
                Text("Roll (radians): \(motionManager.quaternion.roll)")
            }
        }
        .navigationTitle("MotionManager Data")
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
