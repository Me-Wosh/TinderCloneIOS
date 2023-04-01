//
//  TinderIcon.swift
//  TinderClone
//
//  Created by Miłosz Samotyjak on 01/04/2023.
//

import SwiftUI

struct TinderIcon: View {
    var body: some View {
        Image("tinder")
            .colorInvert()
    }
}

struct TinderIcon_Previews: PreviewProvider {
    static var previews: some View {
        TinderIcon()
            .background(.black)
    }
}
