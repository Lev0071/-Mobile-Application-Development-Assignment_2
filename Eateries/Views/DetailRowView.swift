//
//  DetailRowView.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import SwiftUI

struct DetailRowView: View {
    
    //MARK: - PROPERTIES
    var eatery: Eatery
    
    //MARK: - BODY
    var body: some View {
        HStack{
                Image("<Add eatery Name>")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80, alignment: .center)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.4), radius: 3, x: 2, y: 2)
                    .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(eatery.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text(eatery.location)
                    .font(.caption)
                    .foregroundColor(Color.accentColor)
                    .frame(width: 250, height: 15, alignment: .leading)
                    .lineLimit(1)

            })
        }//: HSTACK
    }
}

struct DetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRowView(eatery: Eateries.start[0])
    }
}
