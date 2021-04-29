//
//  DetailView.swift
//  navvy
//
//  Created by tom.hutchinson on 28/04/2021.
//

import SwiftUI

struct DetailView: View {
    
    var item: FeedItem
    
    var body: some View {
        Text(item.id)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: FeedItem(id: "lol"))
    }
}
