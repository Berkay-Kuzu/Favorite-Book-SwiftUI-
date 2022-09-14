//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Berkay Kuzu on 14.09.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack {
            Image(chosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(chosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            Text(chosenFavoriteElement.description)
        }
        
    }
    
    
}

struct DetailsView_Previews: PreviewProvider { // What will be shown in preview.
    static var previews: some View {
        DetailsView(chosenFavoriteElement: theDarkKnight)
    }
}
