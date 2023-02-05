//
//  QR_Code.swift
//  Business_Card
//
//  Created by Anders Strøm on 05/02/2023.
//

import SwiftUI

struct QR_Code: View {
    var body: some View {
        Image("QR")
            .resizable()
            .aspectRatio(contentMode: .fit)
            
            
    }
}

struct QR_Code_Previews: PreviewProvider {
    static var previews: some View {
        QR_Code()
    }
}
