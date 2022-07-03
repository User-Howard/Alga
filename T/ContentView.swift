//
//  ContentView.swift
//  T
//
//  Created by 吳浩瑋 on 2022/6/30.
//

import SwiftUI


struct ContentView: View {
    @State private var selection = 2
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                MemberView()
                    .tabItem{
                        Image(systemName: "person")
                        Text(NSLocalizedString("Member", comment: ""))
                    }
                    .tag(0)
                TaskView()
                    .tabItem{
                        Image(systemName: "star")
                        Text(NSLocalizedString("Task", comment: ""))
                    }
                    .tag(1)
                HomeView()
                    .tabItem{
                        Image(systemName: "house")
                        Text(NSLocalizedString("Home", comment: ""))
                    }
                    .tag(2)
                ShopView()
                    .tabItem{
                        Image(systemName: "bag")
                        Text(NSLocalizedString("Shop", comment: ""))
                    }
                    .tag(3)
                RankView()
                    .tabItem{
                        Image(systemName: "rosette")
                        Text(NSLocalizedString("Rank", comment: ""))
                    }
                    .tag(4)
            }.onAppear {
                UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                AppDelegate.orientationLock = .portrait // And making sure it stays that way
            }.onDisappear {
                AppDelegate.orientationLock = .all // Unlocking the rotation when leaving the view
            }
        }.navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
        /*
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
        ContentView()
            .previewDevice("iPhone 8")*/
    }
}
