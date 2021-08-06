//
//  PetTrackerDash.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/1/21.
//

import SwiftUI

struct PetTrackerDash: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack(alignment: .center) {
            EventList()
            
            Button("Add Event") {
                print("oh yea")
            }
            .frame(width: 250, height: 45.0, alignment: .center)
            .background(Color.green)
            .cornerRadius(10.0)
            
            Spacer()
        }
    }
}

struct PetTrackerDash_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 12"], id: \.self) { deviceName in
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5, x: -5, y: 5)
                PetTrackerDash()
                    .environmentObject(ModelData())
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
        }
    }
}
