//
//  ContentView.swift
//  T
//
//  Created by 吳浩瑋 on 2022/6/30.
//

import SwiftUI


struct MemberView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
            }.navigationTitle(NSLocalizedString("Member", comment: ""))
        }
    }
}
struct TaskView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
            }.navigationTitle(NSLocalizedString("Task", comment: ""))
        }
    }
}
struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray
                VStack{
                    Image(systemName: "person")
                    Image(systemName: "person.fill")
                }
            }.navigationTitle(NSLocalizedString("Home", comment: ""))
        }
    }
}
struct ShopView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
            }.navigationTitle(NSLocalizedString("Shop", comment: ""))
        }
    }
}
struct RankView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
            }.navigationTitle(NSLocalizedString("Rank", comment: ""))
        }
    }
}
struct ContentView: View {
    var body: some View {
        TabView {
            MemberView()
                .tabItem{
                    Image(systemName: "person")
                    Text(NSLocalizedString("Member", comment: ""))
                }
            TaskView()
                .tabItem{
                    Image(systemName: "star")
                    Text(NSLocalizedString("Task", comment: ""))
                }
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text(NSLocalizedString("Home", comment: ""))
                }
            ShopView()
                .tabItem{
                    Image(systemName: "bag")
                    Text(NSLocalizedString("Shop", comment: ""))
                }
            RankView()
                .tabItem{
                    Image(systemName: "rosette")
                    Text(NSLocalizedString("Rank", comment: ""))
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
