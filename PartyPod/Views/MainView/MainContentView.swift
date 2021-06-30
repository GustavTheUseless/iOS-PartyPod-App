//
//  ContentView.swift
//  PartyPod
//
//  Created by Gustav Walker Petersen on 28/06/2021.
//

import SwiftUI

struct MainContentView: View {
    
    @State private var currentSection = 1
    
    init() {
        UINavigationBar.appearance().tintColor = UIColor.black
    }
    
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
                    LazyVStack(alignment: .center, spacing: 15, pinnedViews: [], content: {
                        ForEach(1...3, id: \.self) { count in
                            switch currentSection {
                            case 1:
                                BatteryCardView()
                            case 2:
                                SpeakerCardView()
                            default:
                                Rectangle()
                            }
                        }
                    })
                })
            }
            .navigationBarItems(leading: Image("Logo"))
            .toolbar(content: {
                Button(action: {
                    // TODO: Settings
                }, label: {
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
