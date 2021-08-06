//
//  Update.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/2/21.
//

import SwiftUI

struct Update: View {
    var body: some View {
        VStack {
            Text("// Update section //")
            
            HStack {
                Button("Add pet") {
                    print("oh yea")
                }
                .frame(width: 125, height: 45.0, alignment: .center)
                .background(Color.green)
                .cornerRadius(10.0)
                
                Button("Add event") {
                    print("oh yea")
                }
                .frame(width: 125, height: 45.0, alignment: .center)
                .background(Color.green)
                .cornerRadius(10.0)
            }
            
        }
    }
}

struct Update_Previews: PreviewProvider {
    static var previews: some View {
        Update()
    }
}
