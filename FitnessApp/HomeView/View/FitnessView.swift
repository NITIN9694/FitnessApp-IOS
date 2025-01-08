//
//  HomView.swift
//  FitnessApp
//
//  Created by Nitin Jha on 08/01/25.
//

import SwiftUI

struct HomView: View {
    @State var selectedTab = "Home"
    var body: some View {
        TabView(selection:$selectedTab){
            
        }
    }
}

#Preview {
    HomView()
}
