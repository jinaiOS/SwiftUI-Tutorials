//
//  CategoryContentView.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import SwiftUI

struct CategoryContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem{
                    Label("featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            ListView()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct CategoryContentView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryContentView()
            .environmentObject(ModelData())
    }
}
