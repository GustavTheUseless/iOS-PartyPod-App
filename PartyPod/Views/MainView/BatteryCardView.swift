//
//  BatteryCardView.swift
//  PartyPod
//
//  Created by Gustav Walker Petersen on 28/06/2021.
//

import SwiftUI

struct BatteryCardView: View {
    var batteryStatusText: Text
    var batteryTitle: String
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
            RoundedRectangle(cornerRadius: 15.0)
                .foregroundColor(.white)
                .shadow(radius: 10)
            HStack(alignment: .center, spacing: -20, content: {
                Image(Constants.BATTERY_IMAGE_LARGE)
                VStack(alignment: .leading, spacing: 2, content: {
                    Text(batteryTitle.uppercased()).font(.callout).bold().italic()
                    batteryStatusText
                })
                Spacer()
                VStack {
                    Spacer()
                    Text("MORE INFO").font(.footnote).italic().padding()
                }
            })
        })
    }
}

struct BatteryCardView_Previews: PreviewProvider {
    static var previews: some View {
        BatteryCardView(batteryStatusText: Text("100% CHARGED").font(.caption2).foregroundColor(.green).bold().italic(), batteryTitle: "Test Battery")
            .previewLayout(.fixed(width: 375, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
