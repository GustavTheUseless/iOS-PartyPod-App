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
                    LazyVStack(alignment: .center, spacing: -5, pinnedViews: [], content: {
                        ForEach(0...2, id: \.self) { count in
                            switch currentSection {
                            case 1:
                                BatteryCardView(batteryStatusText: batteryViewModel.getBatteryStatusText(index: count)).padding()
                            case 2:
                                SpeakerCardView().padding()
                            default:
                                Rectangle()
                            }
                        }
                    })
                })
            }
            .navigationBarItems(leading: Image(Constants.PARTYPOD_LOGO_IMAGE))
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
