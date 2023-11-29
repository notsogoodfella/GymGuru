//
//  ScheduleViewThurs.swift
//  GymApp
//
//  Created by Sumudu Semasinghe on 11/29/23.
//

import SwiftUI

struct ScheduleViewThurs: View {
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
            Image("Shoulder_1")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
            Image("Shoulder_2")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
        }
        Text ("Shoulders")
            .fontWeight(.heavy)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
        ScrollView {
            VStack {
                
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                
                Text ("Plank Position 1/3 mins")
                Text ("Seated Arnold Press 4/12")
                
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Side Raises 5/20")
                    Text ("RSingle Arm Front Raises (Above head) 5/24")
                    Text ("Reverse Front Raises 5/12")
                    
                }
                
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                
                Text ("Thrusters 3/15 mins")
                
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Around the Worlds 3/21-15-9")
                    Text ("Machine Military Press 3/21-15-9")
                    Text ("Bent over Side Raises 3/21-15-9")
                    
                }
            }
        }
    }
    
    
}

#Preview {
    ScheduleView()
}

