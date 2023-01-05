//
//  Profile.swift
//  MockProject
//
//  Created by sypatra on 04/01/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            Image("FullSizeRender")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 10))
            Text("Syama Sundar Patra")
                .font(.largeTitle)
            Text("iOS Developer")
                .font(.title2)
            Text("sypatra@deloitte.com")
                .font(.body)
            Text("8249498413")
                .font(.body)
        }
        .padding()
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
