//
//  ScheduleViewTue.swift
//  GymApp
//
//  Created by Sumudu Semasinghe on 11/28/23.
//

import SwiftUI

struct ScheduleViewTue: View {
    //Navigation Bar
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        //back Navigation
        Spacer()
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                ToolbarItem (placement: .navigationBarLeading)  {
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        //  Image(systemName: "arrow.left")
                        Image(systemName: "arrowshape.left.circle")
                            .foregroundColor(.blue)
                        Text("")
                            .foregroundColor(.blue)
                    })
                    
                    
                    
                }
            })
        //Back Navigation
        
        Image("Chest")
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
        Text ("Chest")
            .fontWeight(.heavy)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
        ScrollView {
            VStack {
                
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                
                Text ("Pushups 1/50")
                
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Incline Bench Press 5/15")
                    Text ("Dumbell Incline Bench 5/12")
                    Text ("Cable Flys 5/20")
                    
                }
                
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Bench Press 4/8")
                    Text ("Machine Flys 4/20")
                    
                }
                Text("")
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                // .padding()
                Text ("Pushups 5/30 seconds")
                Text ("Incline Bench Press 100(Just the Bar)")
                
            }
        }
        
        
    }
}

#Preview {
    ScheduleView()
}

