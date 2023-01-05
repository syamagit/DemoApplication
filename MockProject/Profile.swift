//
//  Profile.swift
//  MockProject
//
//  Created by Sharvani, Karrepu on 05/01/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
       VStack
        {
            Image("sharvani")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray,lineWidth: 8))
                Text("Sharvani Karrepu")
                .font(.largeTitle)
                 Text("DFO Community")
                .font(.title2)
                
                Text("Junior IOS developer")
                .font(.title2)
                 Text("kasharvani@deloitte.com")
                .font(.body)
                Text("8688020763")
                .font(.body)
                 Text("US Bengaluru")
                .font(.body)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
