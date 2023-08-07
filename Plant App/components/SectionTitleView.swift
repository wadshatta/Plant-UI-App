//
//  SectionTitleView.swift
//  Plant App
//
//  Created by MacBook Pro on 07/08/2023.
//

import SwiftUI

struct SectionTitleView: View {
    var title : String
    var body: some View {
        HStack{
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color("Primary"))
            Spacer()
            Text("See All")
                .fontWeight(.medium)
                .foregroundColor(Color("Primary").opacity(0.7))
        }
    }
}

struct SectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleView(title: "title")
    }
}
