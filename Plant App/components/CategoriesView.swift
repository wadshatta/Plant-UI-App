//
//  CategoriesView.swift
//  Plant App
//
//  Created by MacBook Pro on 07/08/2023.
//

import SwiftUI


var tabs = ["All","Indoor","Outdoor","Garden"]
struct CategoriesView: View {
    @State var selectedTab = tabs[0]
    @Namespace var animation
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack {
                ForEach(tabs,id:\.self) { tab in
                    CategoryBTN(animation: animation, text: tab, selected: $selectedTab)
                }
            }
            .padding(.vertical,24)
        }
    }
}


struct CategoryBTN: View {
    var animation : Namespace.ID
    var text:String
    @Binding var selected : String
    var body: some View {
        Button(action: {
            withAnimation(.spring(),{
                selected =  text
            })
        }){
            Text(text)
                .fontWeight(.medium)
                .foregroundColor(selected == text ? .white : .black)
                .padding()
                .padding(.horizontal)
                .background(ZStack{
                    if (selected == text)
                    {Color("Primary")
                            .cornerRadius(15)
                            .matchedGeometryEffect(id: "tab", in: animation)
                    }
                })
                
                .shadow(color: Color.black.opacity(0.16), radius: 16,x:4,y: 4)
        }
      
    }
}
struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
