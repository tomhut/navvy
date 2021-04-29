//
//  ContentView.swift
//  navvy
//
//  Created by tom.hutchinson on 28/04/2021.
//

import SwiftUI

struct FeedItem: Identifiable {
    let id: String
}

struct ContentView: View {
    
    static let items = [
        FeedItem(id: "1"),
        FeedItem(id: "2"),
        FeedItem(id: "3")
    ]
    
    //VStack - Does not work as expected
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                ForEach(Self.items) { item in
                    NavigationLink(item.id, destination: DetailView(item: item))
                }
            }
        }
    }
    
    //List - Works
    /*
    var body: some View {
        NavigationView {
            List(Self.items) { item in
                NavigationLink(item.id, destination: DetailView(item: item))
            }
        }
    }
    */
    
    
    //ForEach Embedded in List - Works
    /*
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                List {
                    ForEach(Self.items) { item in
                        NavigationLink(item.id, destination: DetailView(item: item))
                    }
                }
            }
        }
    }
    */
    
    //ForEach Embedded in Form - Pass
    /*
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                Form {
                    ForEach(Self.items) { item in
                        NavigationLink(item.id, destination: DetailView(item: item))
                    }
                }

            }
        }
    }
    */
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
