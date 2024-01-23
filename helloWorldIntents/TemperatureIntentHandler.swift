//
//  TemperatureIntentHandler.swift
//  helloWorldIntents
//
//  Created by sangam pokharel on 16/01/2024.
//

import Foundation
import Intents

class TemperatureIntentHandler:NSObject,TemperatureIntentHandling {
    func handle(intent: TemperatureIntent, completion: @escaping (TemperatureIntentResponse) -> Void) {
        completion(.init(code: .success, userActivity: nil))
    }
}
