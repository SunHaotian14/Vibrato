//
//  Home.swift
//  Vibrato
//
//  Created by Haotian SUN on 2022/1/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            Text("The home page.")
            .tabItem({
                Image(systemName: "house")
                Text("Home") })
            .tag(0)

            SettingView()
            .tabItem({
                Image(systemName: "waveform")
                Text("Records")
            })
            .tag(1)
            
            EasterEggView()
            .tabItem({
                Image(systemName: "gear")
                Text("Settings")
            })
            .tag(1)
            
            HelpView()
            .tabItem({
                Image(systemName: "questionmark.circle")
                Text("Help")
            })
            .tag(1)
        }
        }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
