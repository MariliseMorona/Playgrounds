//: [Previous](@previous)

import Foundation
import Darwin

/**
 CONTROLADORES/ MODIFICADORES DE ACESSO

Modificadores que permitem mostrar ou omitir alguns detalhes do objeto ou suas funcionalidades.
 
PRIVATE: deixa o acesso restrito somente a classe a que pertence o objeto
 
INTERNAL: deixa o acesso restrito a classe a que pertence o objeto e as classes filhas
 
PUBLIC: deixa o acesso publico a todas as classes
 
 */

public class Light {
    // Tornar private esconde o funcionamento de isWorking, nao permitindo assim que ele seja alterado manualmente
    private var isWorking: Bool
    
    // Esta é uma propriedade somente leitura
    public var isOn: Bool {
        return isWorking
    }
    public init(){
        isWorking = false
    }
    
    public func toogle(){
        self.isWorking.toggle()
    }
    
}

func createLight(){
    let light = Light()
//    isWorking = false
//    print(light.isWorking)
    print(light.isOn)
    
    light.toogle()
//    print(light.isWorking)
    print(light.isOn)
}
createLight()


// =======================

public class AdjustableLight {
    
    private let maxPower: Int
    private var internalPower: Int = 0
    
    public var isMaxOut: Bool {
        return internalPower == maxPower
    }
    
    public var power: Int {
        return internalPower
    }
    
    public var isOn: Bool {
        return power > 0
    }
    
    public init(maxPower: Int){
        self.maxPower = maxPower
    }

    public func increasePower(){
        internalPower = min(internalPower + 10, maxPower)
    }
    
    public func decreasePower(){
        internalPower = max(internalPower - 10, 0)
    }
    
}

func createAdjustLight(){
    let light = AdjustableLight(maxPower: 50)
    
    print("----- Ligando a luz ate a potencia maxima -----")
    
    print(light.isOn, light.power, light.isMaxOut)
    
    while light.isMaxOut == false {
        light.increasePower()
        print(light.isOn, light.power, light.isMaxOut)
    }
    
    print("----- Apagando a luz ate a potencia minima -----")
    
    while light.isOn{
        light.decreasePower()
        print(light.isOn, light.power, light.isMaxOut)
    }
}
createAdjustLight()

// =======================

class Boss {
    
    private let defense: Int
    private let maxHealth: Int
    private var currentHealth: Int

    var healthPercent: String{
        return "\(currentHealth * 100 / maxHealth)%"
    }
    
    init(defense: Int, maxHealth: Int){
        self.defense = defense
        self.maxHealth = maxHealth
        self.currentHealth = maxHealth
    }
    
    func defense(damage: Int){
        self.currentHealth -= damage
    }
}

func createBoss(){
    let megaBoss = Boss(defense: 30, maxHealth: 1000)
    
    megaBoss.defense(damage: 100)
    print(megaBoss.healthPercent)
    
}
createBoss()
