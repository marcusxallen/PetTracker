//
//  EventRow.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/1/21.
//

import SwiftUI

//var event: Event

struct EventRow: View {
    var event: Event
    
    var body: some View {
        
        HStack {
            
            EventListPicture(event: event)
            
            Text(event.name)
                .font(.title3)
                .multilineTextAlignment(.leading)

            Spacer()
            
            ButtonTypeRow(event: event)
        }
    }
}

struct EventRow_Previews: PreviewProvider {
    static var events = ModelData().events
    
    static var previews: some View {
        Group {
            EventRow(event: events[0]).environmentObject(ModelData())
            EventRow(event: events[1]).environmentObject(ModelData())
            EventRow(event: events[2]).environmentObject(ModelData())
        }
    }
}
