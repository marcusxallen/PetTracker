//
//  Filter.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/1/21.
//

import SwiftUI
//    @State private var showAbnormalOnly = false
//    @State private var showMedicalOnly = false
//    @State private var showFavoritesOnly = false

struct Filter: View {
    //@EnvironmentObject var modelData: ModelData
    
    var body: some View {

        VStack {
            // if $filterMinimized then don't provide this view
            NavigationView {
                List {
                    Text("Pets")
                }
//                .navigationTitle("Pets")
            }

//            // if $filterMinimized then don't provide this view
//            NavigationView {
//                List {
//                    Text("Event types")
//                }
////                .navigationTitle("Event types")
//            }
        }
    }
}

struct Filters_Previews: PreviewProvider {
    static var previews: some View {
        Filter()
    }
}
