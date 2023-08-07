//
//  WelcomeScreenView.swift
//  Plant App
//
//  Created by MacBook Pro on 07/08/2023.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        ZStack {
            Image("img_back")
                .resizable()
                .overlay(LinearGradient(colors: [Color.black.opacity(0.45),Color.black.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomLeading))
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Image("logo1")
                    .resizable()
                    .frame(width: 60,height: 70)
                Spacer()
                Spacer()
                Spacer()
                Text("Lets Shop")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                Text("Like first time")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .font(.subheadline)
                Text("get the perfect for you")
                    .foregroundColor(Color.white.opacity(0.7))
                    .padding(.vertical,8)
                Spacer()
                
                HStack {
                    Spacer()
                    NextButton()
                }
            }
            .padding()
        }
    }
}
struct NextButton: View {
    var body: some View {
        HStack{
            Text("Next")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            Image(systemName: "chevron.forward")
        }
        .foregroundColor(Color("Primary"))
        .padding()
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(50)
    }
}
struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
