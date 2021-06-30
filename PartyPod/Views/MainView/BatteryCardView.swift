//
//  BatteryCardView.swift
//  PartyPod
//
//  Created by Gustav Walker Petersen on 28/06/2021.
//

import SwiftUI

struct BatteryCardView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 30, content: {
            HStack(alignment: .center, spacing: -20, content: {
                Image("Battery")
                VStack(alignment: .leading, spacing: 2, content: {
                    Text("BATTERY").font(.callout).bold().italic()
                    Text("100% CHARGED").font(.caption2).foregroundColor(.green).bold().italic()
                })
            })
            VStack {
                Spacer()
                Text("MORE INFO").font(.footnote).italic().padding()
            }
        }).background(Color.white).cornerRadius(15).shadow(radius: 10)
        
    }
}

struct BatteryCardView_Previews: PreviewProvider {
    static var previews: some View {
        BatteryCardView()
            .previewLayout(.fixed(width: 375, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
