//
//  SwiftUIView.swift
//  TinderClone
//
//  Created by Miłosz Samotyjak on 31/03/2023.
//

import SwiftUI

struct PhoneIcon: View {
    var body: some View {
        Image("phone")
            .resizable()
            .frame(width: 25, height: 25)
    }
}

struct PhoneIcon_Previews: PreviewProvider {
    static var previews: some View {
        PhoneIcon()
    }
}
