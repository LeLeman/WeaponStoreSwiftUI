//
//  AmmoDetailsView.swift
//  WeaponsStore
//
//  Created by Evgeniy Lemish on 24.10.2022.
//

import SwiftUI

struct AmmoDetailsView: View {
    
    var ammo : Ammo
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(.black)
                    .edgesIgnoringSafeArea(.bottom)
                    .navigationTitle("Detail Ammo")
                    .navigationBarTitleDisplayMode(.inline)
                
                VStack{
                    Spacer()
                    Text(ammo.title)
                        .fontWeight(.heavy)
                    Image(ammo.imageBullet)
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

struct AmmoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AmmoDetailsView(ammo: Ammo.ammoDemo.randomElement()!)
    }
}
