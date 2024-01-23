//
//  IntentHandler.swift
//  helloWorldIntents
//
//  Created by sangam pokharel on 16/01/2024.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        guard  intent is TemperatureIntent else {
            fatalError("Unhandled Intent error : \(intent)")
        }
        return TemperatureIntentHandler()
    }
    
}
