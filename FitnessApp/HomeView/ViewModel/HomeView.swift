//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Nitin Jha on 08/01/25.
//

import SwiftUI

struct HomeView: View {
    @State var calaoires:Int = 123
    @State var active:Int = 53
    @State var stand:Int = 7

    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(alignment:.leading){
                Text("Welcome")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Spacer()
                    VStack{
                        VStack(alignment:.leading,spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.orange)
                            Text("213 Kcl")
                                .bold()
                        }.padding(.bottom)
                        VStack(alignment:.leading,spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.green)
                            Text("52 min")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment:.leading,spacing: 8){
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                            Text("7 hour")
                                .bold()
                        }
                        .padding(.bottom)
                    }
                    Spacer()
                    ZStack{
                        ProgreessBarView(progress:$calaoires, goal: 600, color: .red)
                        ProgreessBarView(progress:$active, goal: 150, color: .green)
                            .padding(.all,20)
                        ProgreessBarView(progress:$stand, goal: 10, color: .blue)
                            .padding(.all,40)

                    }
                    .padding(.horizontal)
                    Spacer()
                    
                }
                .padding()
                
                HStack{
                    Text("Fitness Acitivity")
                        .font(.title2)
                    Spacer()
                    Button{
                        
                    }label: {
                        Text("Show More")
                            .padding(.all,10 )
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                    }
                }
                .padding()
            }
        }
        
    }
}

#Preview {
    HomeView()
}
