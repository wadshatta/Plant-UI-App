//
//  RecommendPlantCardView.swift
//  Plant App
//
//  Created by MacBook Pro on 07/08/2023.
//

import SwiftUI

struct RecommendPlantCardView: View {
    var title: String
    var price : Int
    var image: String
    var body: some View {
        VStack(alignment: .leading){
            ZStack(alignment: .topLeading) {
                Image(image)
                    .resizable()
                //.aspectRatio(contentMode: .fit)
            }
            VStack(alignment: .leading){
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Primary"))
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    Text("4.8")
                        .foregroundColor(Color("Primary").opacity(0.4))
                }
                HStack {
                    Text("$\(price)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Secondary"))
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(.all,8)
                        .background(Color("Primary"))
                        .cornerRadius(30)
                }
            }
            .padding()
        }
        .frame(width: 180,height: 260)
        .background(Color.white)
        .cornerRadius(20.0)
        .shadow(color: Color.black.opacity(0.02), radius: 16,x:16,y:16)
    }
}

struct RecommendPlantCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendPlantCardView(title: "Oscar Plant", price: 150, image: "first")
    }
}
