//
//  GameDetail.swift
//  Project2
//
//  Created by Joseph Sneifer on 4/13/22.
//

import SwiftUI

struct AnimalDetail: View {
    
    let selectedAnimal: Animal
    
    var body: some View {
        Form {
            Section(header: Text("Animal Details")) {
                Image(selectedAnimal.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(selectedAnimal.species)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                HStack {
                    Text("Habitat: ")
                        .foregroundColor(.black)
                        .font(.headline)
                    
                    Text("\(selectedAnimal.habitat)")
                }
                HStack {
                    Text("Kingdom: ")
                        .foregroundColor(.black)
                        .font(.headline)
                    
                    Text("\(selectedAnimal.kingdom)")
                }

                Text(selectedAnimal.description)
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .padding()
            }
        }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetail(selectedAnimal: AnimalData[0])
    }
}