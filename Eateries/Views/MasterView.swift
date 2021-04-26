//
//  MasterView.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import SwiftUI

struct MasterView: View {
    
    //MARK: - PROPERTIES
    @Binding var eateries: [Eatery]
    
    //MARK: - BODY
    var body: some View {
        List{
            ForEach(eateries){ listItem in
                NavigationLink(
                    destination: DetailView(selectedEatery: listItem)) {
                    DetailRowView(eatery: listItem)
                }
            }
        }
    }
}

//struct MasterView_Previews: PreviewProvider {
//    static var previews: some View {
//        MasterView(eateries: Eateries.start)
//    }
//}
