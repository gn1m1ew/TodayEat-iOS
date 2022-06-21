//
//  EatStore.swift
//  TodayEat
//
//  Created by MingW on 4/15/22.
//

import Foundation
import SwiftUI

class EatStore: ObservableObject {
    @Published var eats: [DailyEat] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                       in: .userDomainMask,
                                       appropriateFor: nil,
                                       create: false)
            .appendingPathComponent("eats.data")
    }
    
    static func load(completion: @escaping (Result<[DailyEat], Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let fileURL = try fileURL()
                guard let file = try? FileHandle(forReadingFrom: fileURL) else {
                    DispatchQueue.main.async {
                        completion(.success([]))
                    }
                    return
                }
                let dailyEats = try JSONDecoder().decode([DailyEat].self, from: file.availableData)
                DispatchQueue.main.async {
                    completion(.success(dailyEats))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
    static func save(eats: [DailyEat], completion: @escaping (Result<Int, Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let data = try JSONEncoder().encode(eats)
                let outfile = try fileURL()
                try data.write(to: outfile)
                DispatchQueue.main.async {
                    completion(.success(eats.count))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
    
}
