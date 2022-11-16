//
//  CategoryRow.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Mark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { mark in
                        NavigationLink {
                            MarkDetail(mark: mark)
                        } label: {
                            CategoryItem(mark: mark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static let marks = ModelData().marks
    
    static var previews: some View {
        CategoryRow(
            categoryName: marks[0].category.rawValue,
            items: Array(marks.prefix(4))
        )
    }
}
