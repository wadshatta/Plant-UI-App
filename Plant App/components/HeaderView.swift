//
//  HeaderView.swift
//  Plant App
//
//  Created by MacBook Pro on 07/08/2023.
//
import SwiftUI
struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Exclusive Plants")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("for Your hobby")
                    .font(.title)
            }
            .foregroundColor(Color("Primary"))
            Spacer()
            Image("profile")
                .resizable()
                .frame(width: 70,height: 70)
                .cornerRadius(25.0)
        }
        .padding()
    }
}
