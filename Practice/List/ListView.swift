//
//  ListView.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filterdMarks: [Mark] {
        modelData.marks.filter { mark in
            (!showFavoritesOnly || mark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(filterdMarks) { mark in
                    NavigationLink {
                        MarkDetail(mark: mark)
                    } label: {
                        MarkList(mark: mark)
                    }
                }
            }
            .navigationTitle("Marks")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(ModelData())
    }
}

