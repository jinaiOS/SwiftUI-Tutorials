//
//  ModelData.swift
//  Practice
//
//  Created by 김지은 on 2022/11/03.
//

import Foundation
import Combine
// final로 선언된 요소들은 직접 호출하는 반면, 그렇지 않은 요소들은 vtable을 통해 간접 호출되어 직접 호출되는 경우보다 느리게 작동한다고 소개하고 있습니다.
final class ModelData: ObservableObject {
    @Published var marks: [Mark] = load("Mark.json")
    var hikes: [Hike] = load("Hike.json")
    @Published var profile = Profile.default
    
    var features: [Mark] {
        marks.filter { $0.isFeatured }
    }
    
    var categories: [String: [Mark]] {
        Dictionary(
            grouping: marks,
            by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
