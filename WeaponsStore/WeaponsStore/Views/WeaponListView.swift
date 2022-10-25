//
//  WeaponListView.swift
//  WeaponsStore
//
//  Created by Evgeniy Lemish on 25.10.2022.
//

import SwiftUI

struct WeaponListView: View {
    @State private var selectedWeaponIndex = 0
    @State private var isPresented = false
    
    var body: some View {
       
        NavigationView{
            
            ZStack{
                Color(.black)
                    //.edgesIgnoringSafeArea(.bottom)
                    .navigationTitle("Weapons")
                    .navigationBarTitleDisplayMode(.inline)
                
                    .navigationBarItems(trailing: Button(action: {
                        self.isPresented.toggle()
                    },
                                                         label:{
                        Text("Help")
                    } ))
                
                    .sheet(isPresented: $isPresented, content: {
                        ExtraHelpView()
                    })
                           
                VStack{
                    Spacer()
                    Text ("Scroll in right to see more Weapons".uppercased())
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .shadow(color: .white, radius: 15)
                        .position(x: 200, y: 100)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10) {
                            ForEach(Weapon.weaponDemo) { weapon in
                                GeometryReader{ proxy in
                                    NavigationLink(destination: WeponDetailView(weapon: weapon)) {
                                        VStack{
                                            Image(weapon.image)
                                                .resizable()
                                                .scaledToFit()
                                                .shadow(color: .red, radius: 15)
                                            
                                            Text(weapon.tip)
                                                .fontWeight(.heavy)
                                                .foregroundColor(.black)
                                                .shadow(color: .white, radius: 15)
                                                .multilineTextAlignment(.center)
                                        }
                                    }
                                    /* .background(Image(ammo.imageBullet)
                                        .resizable()
                                        .scaledToFill()
                                        .overlay(Color.yellow)
                                        .blendMode(.multiply)
                                     .blur(radius: 1)) */
                                    .background(Color.yellow)
                                    
                                    .cornerRadius(25)
                                    .frame(width: max(proxy.size.width - proxy.frame(in: .global).midX, proxy.size.width), height: proxy.size.height-50)
                                    .padding()
                                    .shadow(color: .yellow, radius: 15)
                                    .rotation3DEffect(Angle(degrees:
                                                                Double(proxy.frame(in: .global).midX)/20), axis: (x: -3, y: -4, z: -3))
                                }
                                .padding(30)
                                .padding(.top, 30)
                            }
                            .position(x: 180, y: 250)
                            .frame(width: 350, height: 400)
                            .padding(.bottom, 250)
                        }
                    }
                }
            }
    }
        
    }
}

struct WeaponListView_Previews: PreviewProvider {
    static var previews: some View {
        WeaponListView()
    }
}
