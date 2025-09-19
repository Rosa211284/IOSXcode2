import SwiftUI

struct ArmasFuego: View {
    @State private var sliderValue: Double = 50
    @State private var sliderValue2: Double = 25
    @State private var sliderValue3: Double = 1
    var body: some View {
        
        
        HStack{
        
                Image(systemName: "person.and.person.fill")
            Spacer()
            VStack{
                Slider(value: $sliderValue, in: 0...100)
                
                Slider(value: $sliderValue2, in: 0...100)
                
                Slider(value: $sliderValue3, in: 0...100)
            }
        }
        
        
    }
    
}

#Preview {
 ArmasFuego()
}

