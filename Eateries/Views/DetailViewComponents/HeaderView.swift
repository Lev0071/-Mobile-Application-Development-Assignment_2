//
//  HeaderView.swift
//  Eateries
//
//  Created by Yasin Cakar on 26/4/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        //ZStack{
//            LinearGradient(gradient: Gradient(colors: selectedFood.foodItem.backgroundColor), startPoint: .topTrailing, endPoint: .bottomLeading)
        
                Image("<Add eatery Name>")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 167, alignment: .center)// was 300:250
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white,lineWidth: 3)
                    )
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.13), radius: 8, x: 6, y: 8)
                    .padding(.vertical,20) // mainly Usefull for ipad screen
        //}//: ZSTACK
        .frame(height:200)//was 440
    }

}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
