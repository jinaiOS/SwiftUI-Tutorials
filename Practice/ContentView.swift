//
//  ContentView.swift
//  Practice
//
//  Created by 김지은 on 2022/11/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MarkList(mark: marks[0])
        
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleView(mark: ModelData().marks[0])
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .center) {
                Text("애플")
                    .font(.title)
                HStack {
                    Text("삼성이 최고")
                        .font(.subheadline)
                    Spacer()
                    Text("대한민국")
                        .font(.subheadline)
                }
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("애플에 대하여")
                    .font(.title2)
                Text("삼성")
            }
            .padding()
            
            Spacer()
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
