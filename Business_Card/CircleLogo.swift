//
//  CircleLogo.swift
//  Business_Card
//
//  Created by Anders Strøm on 05/02/2023.
//

import SwiftUI

struct CircleLogo: View {
    var body: some View {
        Image("mb logo blackbg")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 10)
            }
            .shadow(radius: 50)
    }
}

struct CircleLogo_Previews: PreviewProvider {
    static var previews: some View {
        CircleLogo()
    }
}
