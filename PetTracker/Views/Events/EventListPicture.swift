//
//  EventListPicture.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/2/21.
//

import SwiftUI

struct EventListPicture: View {
    var event: Event
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person.crop.square")
            Text(event.pet)
                .font(.caption)
        }
        .frame(width: 45.0)
    }
}

struct EventListPicture_Previews: PreviewProvider {
    static var events = ModelData().events
    static var previews: some View {
        EventListPicture(event: events[0])
    }
}
