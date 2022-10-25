//
//  Ammo.swift
//  WeaponsStore
//
//  Created by Evgeniy Lemish on 21.10.2022.
//

import Foundation

struct Ammo: Identifiable {
    var id = UUID()
    var title: String
    var imageBullet: String
}

extension Ammo {
    static let ammoDemo = [
    Ammo(title: "7.62×39mm", imageBullet: "762-39mm"),
    Ammo(title: "5.56x46mm", imageBullet: "556-45mm"),
    Ammo(title: "Magnumx44mm", imageBullet: "magnum44"),
    Ammo(title: "Projectile for 'Bazooka'", imageBullet: "projectileBazooka"),
    Ammo(title: "MachineGun Bullets", imageBullet: "MachineGunBullets")
    ]
}


struct Weapon: Identifiable {
    var id = UUID()
    var tip: String
    var image: String
}

extension Weapon {
    static let weaponDemo = [
    Weapon(tip: "M4A1", image: "M4A1"),
    Weapon(tip: "AK-47", image: "AK47"),
    Weapon(tip: "MachineGun", image: "MachineGun"),
    Weapon(tip: "Bazooka", image: "bazooka"),
    Weapon(tip: "Desert Eagle", image: "Eagle")
    ]
}


struct WeaponArsenal {
   
var weapons = ["M4A1", "AK-47", "Bazooka", "Machinegun", "Desert Eagle"]
    
    init(weapons: [String] = ["M4A1", "AK-47", "Bazooka", "Machinegun", "Desert Eagle"]) {
        self.weapons = weapons
    }
}

struct BulletArsenal {
   
var bullets = ["7.62×39mm", "5.56x46mm", "Magnumx44mm", "Projectile for 'Bazooka'", "MachineGun Bullets"]
    
    init(bullets: [String] = ["7.62×39mm", "5.56x46mm", "Magnumx44mm", "Projectile for 'Bazooka'", "MachineGun Bullets"]) {
        self.bullets = bullets
    }
}

