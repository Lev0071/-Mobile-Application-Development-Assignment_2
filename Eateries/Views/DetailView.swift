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
        Text("\(selectedEatery.name)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedEatery: Eateries.start[0])
    }
}
