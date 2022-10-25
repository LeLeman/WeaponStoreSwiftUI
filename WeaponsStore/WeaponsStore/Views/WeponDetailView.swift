//
//  WeponDetailView.swift
//  WeaponsStore
//
//  Created by Evgeniy Lemish on 25.10.2022.
//

import SwiftUI

struct WeponDetailView: View {
    var weapon : Weapon
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(.black)
                    .edgesIgnoringSafeArea(.bottom)
                    .navigationTitle("Detail Weapon")
                    .navigationBarTitleDisplayMode(.inline)
                
                VStack{
                    Text(weapon.tip)
                        .fontWeight(.heavy)
                    Image(weapon.image)
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 300, height: 300)
                .background(Color.blue)
                .cornerRadius(20)
                .shadow(color: .blue, radius: 25)
            }
        }
    }
}


struct WeponDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WeponDetailView(weapon: Weapon.weaponDemo.randomElement()!)
    }
}
