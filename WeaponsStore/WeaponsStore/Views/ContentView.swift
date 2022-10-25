//
//  ContentView.swift
//  WeaponsStore
//
//  Created by Evgeniy Lemish on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
  
    
    var body: some View {
        TabView{
            AmmoListView()
                .tabItem{
                    Image(systemName: "square.stack.fill")
                    Text(verbatim: "Ammo")
                }.tag(0)
            
            WeaponListView()
                .tabItem{
                    Image(systemName: "square.stack.fill")
                    Text("Weapon")
                }.tag(1)
            
            OrderTableView()
                .tabItem{
                    Image(systemName: "lanyardcard")
                    Text(verbatim: "Make a order")
                }.tag(2)
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
