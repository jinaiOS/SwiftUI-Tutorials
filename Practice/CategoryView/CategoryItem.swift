//
//  CategoryItem.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import SwiftUI

struct CategoryItem: View {
    var mark: Mark
    
    var body: some View {
        VStack(alignment: .leading) {
            mark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(mark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(mark: ModelData().marks[0])
    }
}
