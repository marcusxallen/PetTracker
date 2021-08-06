//
//  EventDetail.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/1/21.
//
// TO-DO
// add pet pic
// allow add event pic
// button operability
// coords and map?
//

import SwiftUI

struct EventDetail: View {
    @EnvironmentObject var modelData: ModelData
    @State private var editDeets = false
    var event: Event
    
    var body: some View {
        VStack {
            if 1 == 1 {
                EventListPicture(event: event)
                Text(event.name)
                    .font(.title)
                Image(systemName: "person.fill")
                    .frame(width: 200.0, height: 200.0)
                Text("Date: " + event.date)
                Text("Time: " + event.time)
                Text("Event Detail: TO-DO")
                Text("Caretaker: " + event.caretaker)
                Text("Tags: TO-DO")
            }
            EventDetailUpdateButton()
        }
    }
}

struct AddEvent_Previews: PreviewProvider {
    static var events = ModelData().events
    
    static var previews: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: -5, y: 5)
            EventDetail(event: events[0])
        }
    }
}
