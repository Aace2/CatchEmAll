//
//  CreaturesListView.swift
//  CatchEmAll
//
//  Created by TheForce on 10/1/24.
//

import SwiftUI

struct CreaturesListView: View {
    var creatures = ["Vhagar",
                     "Seasmoke",
                     "Syrax",
                     "Sunfyre",
                     "Vermax"
        ]
    
    var body: some View {
        NavigationStack {
            List(creatures, id: \.self) { creature in
                Text(creature)
                    .font(.title2)
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")
        }
    }
}

#Preview {
    CreaturesListView()
}
