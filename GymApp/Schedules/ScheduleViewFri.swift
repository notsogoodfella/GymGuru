//
//  ScheduleViewFri.swift
//  GymApp
//
//  Created by Sumudu Semasinghe on 11/29/23.
//

import SwiftUI

struct ScheduleViewFri: View {
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
        HStack {
            Image("Bicep")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
            Image("Tricep")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
        }
        Text ("Bicep & Tricep")
        
        ScrollView {
            VStack {
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                
                Text ("Cable Straight Bar Curl 1/50")
                
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Barbell Curls 4/10")
                    Text ("Hammer Curls 4/20")
                    
                }
                
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Inside Ez Bar Curls 3/12")
                    Text ("Incline Curls 3/15")
                }
                
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                
                Text ("Cable Straight Bar Cruls 1/100")
                
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Close Grip Bench 5/12")
                    Text ("Over Head Dumbell extention 3/12")
                }
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Straight Bar Tricep Pulldown 4/20")
                    Text ("Skull Crushers 4/12")
                    Text ("Plank Kickbacks 4/15")
                }
                
                
            }
        }
    }
}

#Preview {
    ScheduleViewFri()
}
