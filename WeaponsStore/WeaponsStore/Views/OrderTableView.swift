//
//  OrderTableView.swift
//  WeaponsStore
//
//  Created by Evgeniy Lemish on 25.10.2022.
//

import SwiftUI

struct OrderTableView: View {
    @State private var selectedWeponIndex = 0
    @State private var selectedBulletIndex = 0
    @State private var isOn = false
    @State var textValue = ""

    var weaponArsenal : WeaponArsenal = WeaponArsenal()
    var bulletArsenal :  BulletArsenal = BulletArsenal()
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Picker(selection: $selectedWeponIndex, label: Text("Choose your weapon:")
                        .fontWeight(.heavy)){
                        ForEach(0..<weaponArsenal.weapons.count){
                            Text(self.weaponArsenal.weapons[$0]).tag([$0])
                                .foregroundColor(.gray)
                        }
                    }
                    .pickerStyle(.inline)
                }
                
                
                Section{
                    Picker(selection: $selectedBulletIndex, label: Text("Choose your bullets:")
                        .fontWeight(.heavy)){
                        ForEach(0..<bulletArsenal.bullets.count){
                            Text(self.bulletArsenal.bullets[$0]).tag([$0])
                                .foregroundColor(.gray)
                        }
                    }
                    .pickerStyle(.inline)
                }
                
                
                Section{
                    Toggle("Purchcase armor?", isOn: $isOn)
                        .fontWeight(.heavy)
                    
                    if isOn {
                        Text("It will be cost extra 850$")
                            .foregroundColor(.gray)
                            .font(Font.system(size: 12))
                    }
                }
                Section{
                    TextField("Enter what you looking for...", text: $textValue)
                }
                
                Section{
                    Button(action: {
                        print ("We call you back!")
                    }){
                        HStack{
                            Text("Confirm order, Comrate")
                                .foregroundColor(.red)
                                .fontWeight(.heavy)
                            Image(systemName: "star")
                                .fontWeight(.heavy)
                                .foregroundColor(.red)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Time to be Armed"))
        }
    }
}

struct OrderTableView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTableView()
    }
}
