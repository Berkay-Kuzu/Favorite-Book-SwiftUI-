//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Berkay Kuzu on 14.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements, id : \.name) { element in
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                        }
                    }
                }
            }.navigationBarTitle(Text("Favorite Book"))
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
