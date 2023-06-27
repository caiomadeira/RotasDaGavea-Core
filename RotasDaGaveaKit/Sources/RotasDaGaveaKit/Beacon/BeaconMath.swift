//
//  File.swift
//  
//
//  Created by caiomadeira on 19/06/23.
//

import Foundation
import UIKit

class BeaconMath {
    
    private static var shared: BeaconUtils?
    
    private init() {  }
    
    public static func getInstance() -> BeaconUtils {
        if (BeaconUtils.shared == nil ) {
            BeaconUtils.shared = BeaconUtils()
        }
        
        return BeaconUtils.shared!
    }
    
    /// Calcula e retorna a distância entre dois objetos.
    ///
    /// - Parameters:
    ///     - a:  É a referencia de RSSI para 1m, ou seja, o valor em dBm medido em 1m.
    ///     - n:  Corresponde ao ``path loss``, que no caso de ambientes abertos é atribuido o valor 2 (dois).
    ///     - rssi: Representa o valor da intensidade do sinal que chega.
    ///
    /// - Returns: O valor da distancia entre dois objetos que estão se comunicando.
    private func distance(n: Int, a: Int, rssi: Int) -> Int {
        return 10 * (rssi - a / -10 * n)
    }
    
    /// Calcula o tempo restante da bateria
    ///
    ///
    /// - Calc: Battery Life [hours] = Battery Capacity [mAh] / Device Consumption [mA] * 0.70
    private func baterryLife(batteryCapacity: CGFloat, deviceConsumption: CGFloat) -> CGFloat {
        let externalFactorsConstant = 0.7
        return batteryCapacity / deviceConsumption * externalFactorsConstant
    }
        
}
