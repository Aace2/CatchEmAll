//
//  CreaturesListView.swift
//  CatchEmAll
//
//  Created by TheForce on 10/1/24.
//

import SwiftUI

struct CreaturesListView: View {
    //var creatures = ["Vhagar", "Seasmoke", "Syrax", "Sunfyre", "Vermax"]
    @StateObject var creaturesVM = CreatureViewModel()
    
    var body: some View {
        NavigationStack {
            List(creaturesVM.creaturesArray, id: \.self) { creature in
                Text(creature.name)
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")
        }
        .task {
            await creaturesVM.getData()
        }
    }
}

#Preview {
    CreaturesListView()
}
