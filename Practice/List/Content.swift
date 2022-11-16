//
//  Content.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import SwiftUI

struct Content: View {
    var body: some View {
        ListView()
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
            .environmentObject(ModelData())
    }
}
