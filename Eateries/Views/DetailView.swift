//
//  DetailView.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import SwiftUI

struct DetailView: View {
    
    //MARK: - PROPERTIES
    var selectedEatery:Eatery
    
    //MARK: - BODY
    var body: some View {
        
        VStack{
            // HEADER SECTION
            HeaderView()
            VStack(alignment: .leading, spacing: 13){/**/
                List{
                    Section(header: Text(selectedEatery.name).font(.largeTitle)) {
                            Text("\(selectedEatery.location)").font(.body)
                    }//: SECTION #1
                    Section(header: Text("Notes").font(.title2)) {
                            Text("\(selectedEatery.notes)").font(.body)
                    }//: SECTION #2
                    Section(header: Text("Reviews").font(.title2)) {
                        if let content = selectedEatery.reviews{
                            ForEach(selectedEatery.reviews!){ review in
                                Text("\(review.reviewer)")
                                Text("\(review.comment)")
                                    .font(.body)
                            }
                        }
                    }//: SECTION #3
                }//: LIST
        }//: VSTACK 2
        .padding(.horizontal,15)
        .frame(maxWidth:640, alignment: .center) // Width compatibable up to Ipad screens
        .navigationBarTitle(selectedEatery.name)
        .navigationBarItems(trailing: EditButton())
        .navigationBarTitleDisplayMode(.inline)
        }//: VSTACK
    }//: View
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedEatery: Eateries.start[0])
    }
}
