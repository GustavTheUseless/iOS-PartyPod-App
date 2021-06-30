//
//  ContentView.swift
//  PartyPod
//
//  Created by Gustav Walker Petersen on 28/06/2021.
//

import SwiftUI

struct MainContentView: View {
    
    
    var batteryViewModel = BatteryViewModel()
    var speakerViewModel = SpeakerViewModel()
    
    @State private var currentSection = 1
    
    var body: some View {
        NavigationView(content: {
            VStack {
                Picker(selection: $currentSection, label: Text(""), content: {
                    Text("BATTERIES")
                        .bold()
                        .italic()
                        .tag(1)
                    Text("SPEAKER INFO")
                        .bold()
                        .italic()
                        .tag(2)
                })
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                ScrollView(.vertical, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                    Spacer()
                    Spacer()
                    if (currentSection == 1) {
                        LazyVStack(alignment: .center, spacing: -15, pinnedViews: [], content: {
                            ForEach(1...batteryViewModel.getBatteriesLength(), id: \.self) { index in
                                BatteryCardView(batteryStatusText: batteryViewModel.getBatteryStatusText(index: index-1), batteryTitle: batteryViewModel.getBatteryTitle(index: index-1)).padding()
                            }
                        })
                    } else if (currentSection == 2) {
                        LazyVStack(alignment: .center, spacing: -15, pinnedViews: [], content: {
                            ForEach(1...2, id: \.self) { index in
                                SpeakerCardView().padding()
                            }
                        })
                    }
                })
            }
            .navigationBarItems(leading: Image(Constants.PARTYPOD_LOGO_IMAGE).resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250))
            .toolbar(content: {
                NavigationLink(
                    destination: SettingsView(),
                    label: {
                        Image(systemName: "slider.horizontal.3")
                    })
            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
            
        
    }
}
