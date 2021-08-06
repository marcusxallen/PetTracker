//
//  FilterRow.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/2/21.
//

import SwiftUI

struct FilterRow: View {
    var categoryName: String
    var items: [Event]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
//                    ForEach(items) { event in
//                        NavigationLink(destination: EventDetail(event: event)) {
//                            FilterItem(event: event)
//                        }
//                    }
                    FilterItem()
                    FilterItem()
                }
            }
            .frame(height: 185)
        }
    }
}

struct FilterRow_Previews: PreviewProvider {
    static var previews: some View {
        Text("// Filter Row //")
    }
}
