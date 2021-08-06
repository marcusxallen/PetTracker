//
//  MedicalButton.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/2/21.
//  Copyright © 2021 marcusxallen. All rights reserved.
//

import SwiftUI

struct MedicalButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "cross.case" : "cross.case")
                .foregroundColor(isSet ? Color.blue : Color.gray)
        }
    }
}

struct MedicalButton_Previews: PreviewProvider {
    static var previews: some View {
        MedicalButton(isSet: .constant(true))
    }
}
