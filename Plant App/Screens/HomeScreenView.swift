//
//  HomeScreenView.swift
//  Plant App
//
//  Created by MacBook Pro on 07/08/2023.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack{
            Color("bg_color")
                .ignoresSafeArea()
            VStack {
                HeaderView()
                CategoriesView()
                SectionTitleView(title: "Recommended")
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing:16){
                        RecommendPlantCardView(title: "Oscar Plant", price: 180, image: "first")
                        RecommendPlantCardView(title: "Oscar Plant", price: 180, image: "2th")
                        RecommendPlantCardView(title: "Oscar Plant", price: 180, image: "3th")
                        RecommendPlantCardView(title: "Oscar Plant", price: 180, image: "4th")
                    }
                    
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}


