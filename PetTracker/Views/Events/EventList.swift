//
//  EventList.swift
//  PetTracker
//
//  Created by Marcus Allen on 7/31/21.
//

import SwiftUI

struct EventList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            
            // TO-DO add filters pet/types/date range
            List(modelData.events) {
                event in NavigationLink(destination: EventDetail(event: event)) {
                        EventRow(event: event)
                }
            }
            .navigationTitle("Events")
        }
    }
}

struct PetLog_Previews: PreviewProvider {
    static var previews: some View {
        EventList()
            .environmentObject(ModelData())
        }
    }

