

//VELOCIMETRO DE UN AUTOMOVIL DIGITAL

import UIKit

//enumeracion
enum Velocidades : Int {
    case Apagado = 0
    case Velocidad_Baja = 20
    case Velocidad_Media =  50
    case Velocidad_Alta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
}


//clase
class Auto {
    
    //declaracion variable tipo enumeracion
    var velocidad : Velocidades
    
    
    init(){
        //instancia de la enumeracion llamada velocidad
        self.velocidad = Velocidades (velocidadInicial: Velocidades.Apagado)
        
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        if velocidad.rawValue == 0 {
            velocidad = .Velocidad_Baja
        }
        else if velocidad.rawValue == 20  || velocidad.rawValue == 120{
            velocidad = .Velocidad_Media
        }
        else if velocidad.rawValue == 50{
            velocidad = .Velocidad_Alta
        }
       
        return (velocidad.rawValue, String(velocidad).stringByReplacingOccurrencesOfString("_", withString: " "))
    }


}

// instancia de auto
var auto = Auto()

//declaro tupla para almacenar el valor de la tupla que devuelve la funcion de cambio de velocidad
var resultado : (actual: Int,velocidadEnCadena:String) = (auto.velocidad.rawValue,String(auto.velocidad))

for var i=0; i<20; i++ {
    
    print ("\(i+1). \(resultado.actual), \(resultado.velocidadEnCadena)")
    resultado = auto.cambioDeVelocidad()
    
}
















