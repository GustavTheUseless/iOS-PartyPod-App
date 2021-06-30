//
//  SettingsView.swift
//  PartyPod
//
//  Created by Gustav Walker Petersen on 30/06/2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Form(content: {
                Section(header: Text("Setup and configuration")) {
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("SETUP SPEAKER")
                        })
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("ADD BATTERY")
                        })
                }
                Section(header: Text("Customization")) {
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("CHANGE APP ICON")
                        })
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("SIRI SHORTCUTS")
                        })
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("WIDGETS")
                        })
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("APPEARANCE")
                        })
                }
            })
        }.navigationBarTitle("PERSONALIZE", displayMode: .inline)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            
    }
}
