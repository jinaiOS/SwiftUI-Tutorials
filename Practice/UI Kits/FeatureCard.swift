//
//  FeatureCard.swift
//  Practice
//
//  Created by 김지은 on 2022/11/04.
//

import SwiftUI

struct FeatureCard: View {
    var mark: Mark
    
    var body: some View {
        mark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay {
                TextOverlay(mark: mark)
            }
    }
}

struct TextOverlay: View {
    var mark: Mark
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(mark.name)
                    .font(.title)
                    .bold()
                Text(mark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(mark: ModelData().features[0])
    }
}
