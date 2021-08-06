//
//  FilterItem.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/2/21.
//

import SwiftUI

struct FilterItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person")
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text("Scarlet")
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct FilterItem_Previews: PreviewProvider {
    static var previews: some View {
        FilterItem()
    }
}
