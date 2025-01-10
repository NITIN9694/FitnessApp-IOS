//
//  HomView.swift
//  FitnessApp
//
//  Created by Nitin Jha on 08/01/25.
//

import SwiftUI

struct FitnessView: View {
    @State var selectedTab = "Home"
    
    init() {
        let apperance = UITabBarAppearance()
        apperance.configureWithOpaqueBackground()
        apperance.stackedLayoutAppearance.selected.iconColor = .orange
        apperance.stackedLayoutAppearance.selected.titleTextAttributes =
        [NSAttributedString.Key.foregroundColor: UIColor.orange]
        UITabBar.appearance().scrollEdgeAppearance = apperance
        
        
    }
    var body: some View {
        TabView(selection:$selectedTab){
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ChartsDataView()
                .tag("ChartDataView")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        
        }
    }
}

#Preview {
    FitnessView()
}
