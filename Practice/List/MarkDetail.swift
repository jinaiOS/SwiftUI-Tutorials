//
//  MarkDetail.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import SwiftUI

struct MarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var mark: Mark
    
    var markIndex: Int {
        modelData.marks.firstIndex(where: { $0.id == mark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleView(mark: mark)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                HStack {
                    Text(mark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.marks[markIndex].isFavorite)
                }
                
                HStack {
                    Text(mark.park)
                    Spacer()
                    Text(mark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(mark.name)")
                    .font(.title2)
                Text(mark.description)
            }
            .padding()
        }
        .navigationTitle(mark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        MarkDetail(mark: ModelData().marks[0])
            .environmentObject(modelData)
    }
}
