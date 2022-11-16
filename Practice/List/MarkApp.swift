//
//  MarkApp.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import SwiftUI

struct MarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            Content()
                .environmentObject(modelData)
        }
    }
}
