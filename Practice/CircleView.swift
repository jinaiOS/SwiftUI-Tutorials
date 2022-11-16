//
//  CircleView.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import SwiftUI

struct CircleView: View {
    var mark: Mark
    
    var body: some View {
        mark.image
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        CircleView(mark: modelData.marks[0])
    }
}
