//
//  ButtonTypeRow.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/2/21.
//

import SwiftUI

struct ButtonTypeRow: View {
    @EnvironmentObject var modelData: ModelData
    
    var event: Event
    
    var eventIndex: Int {
        modelData.events.firstIndex(where: { $0.id == event.id })!
    }
    
    var body: some View {
        HStack {
            MedicalButton(isSet: $modelData.events[eventIndex].isMedical)
            FavoriteButton(isSet: $modelData.events[eventIndex].isFavorite)
            NormalButton(isSet: $modelData.events[eventIndex].isAbnormal)
        }
    }
}

struct EventTypeIndicators_Previews: PreviewProvider {
    static var events = ModelData().events
    
    static var previews: some View {
        Group {
            ButtonTypeRow(event: events[0]).environmentObject(ModelData())
            ButtonTypeRow(event: events[1]).environmentObject(ModelData())
            ButtonTypeRow(event: events[2]).environmentObject(ModelData())
            ButtonTypeRow(event: events[3]).environmentObject(ModelData())
            ButtonTypeRow(event: events[4]).environmentObject(ModelData())
            ButtonTypeRow(event: events[5]).environmentObject(ModelData())
        }
    }
}
