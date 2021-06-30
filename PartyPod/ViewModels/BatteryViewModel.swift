//
//  BatteryViewModel.swift
//  PartyPod
//
//  Created by Gustav Walker Petersen on 30/06/2021.
//

import SwiftUI

struct BatteryViewModel {
    
    private var batteries: [Battery] = [Battery(name: "Gustav", batteryPercentage: 69, isCharging: false), Battery(name: "John Doe", batteryPercentage: 100, isCharging: false), Battery(name: "2nd", batteryPercentage: 69, isCharging: true)]
    
    init() {}
    
    func getBatteryStatusText(index: Int) -> Text {
        let endText = Text("\(batteries[index].batteryPercentage)% CHARGED").font(.system(size: 11, weight: .bold)).italic()
        
        if (batteries[index].isCharging) {
            return Text("CHARGING").font(.system(size: 11, weight: .bold)).italic().foregroundColor(.blue)
        }
        if (batteries[index].batteryPercentage > 70) {
            return endText.foregroundColor(.green)
        } else if (batteries[index].batteryPercentage > 40) {
            return endText.foregroundColor(.yellow)
        } else if (batteries[index].batteryPercentage < 40) {
            return endText
        }
        return endText
    }
    
    func setBatteryStatus() {}
}
