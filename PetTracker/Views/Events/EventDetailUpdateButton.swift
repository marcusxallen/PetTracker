//
//  EventDetailUpdateButton.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/4/21.
//  Copyright © 2021 marcusxallen. All rights reserved.
//

import SwiftUI

struct EventDetailUpdateButton: View {
    var body: some View {
        VStack {
            Divider()
            HStack {
                Button("Edit Event") {
                    print("oh yea")
                }
                .frame(width: 125, height: 45.0, alignment: .center)
                .background(Color.green)
                .cornerRadius(10.0)
                
                Button("Delete Event") {
                    print("oh yea")
                }
                .frame(width: 125, height: 45.0, alignment: .center)
                .background(Color.green)
                .cornerRadius(10.0)
            }
            
        }
    }
}

struct EventDetailUpdateButton_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailUpdateButton()
    }
}
