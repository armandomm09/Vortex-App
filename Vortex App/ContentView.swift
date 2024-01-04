import SwiftUI

struct ContentView: View {
    
    @State var teamName: String = ""
    
    var languagesPhotos: [String] = [
        "javaLogo",
        "cppLogo",
        "labviewLogo",
        "pythonLogo"
    ]
    
    @State private var selectedOption = 0
    
    let chassisTypes: [String] = [
        "Tank",
        "Mecanum",
        "Swerve",
        "Dragonfly"
    ]
    
    @State var chassisSelection = ""
    
    let wheelTypes: [String] = [
    "Omni",
    "Colsom",
    "KOP",
    "Plaction",
    "Pneumatic"
    ]
    
    @State var wheelSelection = ""
    
    var body: some View {
        
           
        NavigationView {
            Form {
                TextField("Team Name", text: $teamName)
                    .padding()
                    .foregroundColor(.white)
                    .bold()
                    //.background(Color.red)
                    //.cornerRadius(10)
                
                HStack{
                    ForEach(languagesPhotos, id: \.self) {imageName in
                        Button {
                        print("Boton \(imageName)")
                        } label: {
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                        }
                        .padding()

                    }

                }
                
                
                Section {
                    Picker("Chassis", selection: $chassisSelection) {
                        ForEach(chassisTypes, id: \.self){chassisType in
                            Text(chassisType)
                        }
                    }
                    .pickerStyle(.menu)
                    
                    Picker("Wheel", selection: $wheelSelection) {
                        ForEach(wheelTypes, id: \.self){wheelType in
                            Text(wheelType)
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
              
            }
            .navigationTitle("Team: ")
        
  }
}
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
