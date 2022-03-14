import Foundation

class MockData {
    
    static let shared = MockData()

    private init() {
        personas = loadPersonas()
    }
    
    var collectionDeck: [Carta] = []
    
    var deckPokemon: [Carta] = []
    var deckYugi: [Carta] = []
    var deckMagic: [Carta] = []
    
    var personas: [Persona] = []
    
    func loadPersonas() -> [Persona] {
       let filename = "personas.json"
       var data: Data
       
       
       guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
       else {
               fatalError("Couldn't find \(filename) in main bundle.")
       }
           
       do {
               data = try Data(contentsOf: file)
       } catch {
               fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
       }
       
       
       do {
           let decoder = JSONDecoder()
           return try decoder.decode([Persona].self, from: data)
       } catch {
           fatalError("Couldn't parse \(filename) as \(Persona.self):\n\(error)")
       }
       
   }
    
    
    
     func loadCardPokemon() -> [Carta] {
        let filename = "Cards.json"
        var data: Data
        
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
                fatalError("Couldn't find \(filename) in main bundle.")
        }
            
        do {
                data = try Data(contentsOf: file)
        } catch {
                fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([Carta].self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(Carta.self):\n\(error)")
        }
        
    }
    
    
    func loadCardMagic() -> [Carta] {
       let filename = "CardsMagic.json"
       var data: Data
       
       
       guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
       else {
               fatalError("Couldn't find \(filename) in main bundle.")
       }
           
       do {
               data = try Data(contentsOf: file)
       } catch {
               fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
       }
       
       
       do {
           let decoder = JSONDecoder()
           return try decoder.decode([Carta].self, from: data)
       } catch {
           fatalError("Couldn't parse \(filename) as \(Carta.self):\n\(error)")
       }
       
   }
    
    func loadCardYugi() -> [Carta] {
       let filename = "CardsYugi.json"
       var data: Data
       
       
       guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
       else {
               fatalError("Couldn't find \(filename) in main bundle.")
       }
           
       do {
               data = try Data(contentsOf: file)
       } catch {
               fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
       }
       
       
       do {
           let decoder = JSONDecoder()
           return try decoder.decode([Carta].self, from: data)
       } catch {
           fatalError("Couldn't parse \(filename) as \(Carta.self):\n\(error)")
       }
       
   }
}
