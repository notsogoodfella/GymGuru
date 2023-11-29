//
//  ContentView.swift
//  GymApp
//
//  Created by Sumudu Semasinghe on 11/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                
        NavigationView{
                VStack {
                    Image ("Background")
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/75.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/75.0/*@END_MENU_TOKEN@*/)

                    NavigationLink(destination: WorkoutView()){
                        Text("Begin the Workout")
                            .colorInvert()
                            .frame(width: 300, height: 75, alignment: .center)
                            .background(Color.black)
                            .cornerRadius(50)
                        
                    }
                }
            }
            
            
            
        }
    }
    
    
    // ?? #Preview {
    //    ContentView()
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
