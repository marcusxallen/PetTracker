//
//  NormalButton.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/2/21.
//  Copyright © 2021 marcusxallen. All rights reserved.
//

import SwiftUI

struct NormalButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "xmark.octagon.fill" : "checkmark.seal")
                .foregroundColor(isSet ? Color.red : Color.green)
        }
    }
}

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(isSet: .constant(true))
    }
}
