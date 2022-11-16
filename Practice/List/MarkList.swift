//
//  MarkList.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import SwiftUI

struct MarkList: View {
    var mark: Mark
    
    var body: some View {
        HStack {
            mark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(mark.name)
            
            Spacer()
            
            if mark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct MarkList_Previews: PreviewProvider {
    static var marks = ModelData().marks
    
    static var previews: some View {
        Group {
            MarkList(mark: marks[0])
            MarkList(mark: marks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
