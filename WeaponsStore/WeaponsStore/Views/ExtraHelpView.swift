//
//  ExtraHelpView.swift
//  WeaponsStore
//
//  Created by Evgeniy Lemish on 25.10.2022.
//

import SwiftUI

struct ExtraHelpView: View {
    var body: some View {
        
        ZStack{
            VStack{
                
                Image("support")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .yellow, radius: 15)
                
                Text ("For more help go to www.weapons.coz.in")
                    .fontWeight(.heavy)
                    .foregroundColor(.yellow)
                    .shadow(color: .yellow, radius: 10)
            }
            .background(Image("fon")
                .scaledToFill()
                .overlay(Color.blue)
                .blendMode(.multiply)
             .blur(radius: 1))
        }
    }
}

struct ExtraHelpView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraHelpView()
    }
}
