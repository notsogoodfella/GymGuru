//
//  ScheduleView.swift
//  GymApp
//
//  Created by Sumudu Semasinghe on 11/28/23.
//

import SwiftUI

struct ScheduleView: View {
    
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
            Image("Leg_1")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
            Image ("Leg_2")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
        }
        Text ("Legs")
            .fontWeight(.heavy)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        ScrollView {
            VStack {
                
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                
                Text ("Jumping Lunges 1/100")
                Text ("Squats 5/8-10")
                Text ("Walking Dumbell Lunges 4/60(30 each leg)")
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Straight Leg Dumbell Deadlifts 4/15")
                    Text ("Good Mornings 20")
                    Text ("Leg Extention 4/15-20")
                    Text ("Wall Squat Hold 15 Mins")
                }
                Text("")
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                // .padding()
                Text ("Front Squats 6/10")
                Text ("Squat Jumps 1/100")
                
            }
        }
        
        
    }
}

#Preview {
    ScheduleView()
}
