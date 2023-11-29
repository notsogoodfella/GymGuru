//
//  ScheduleViewWed.swift
//  GymApp
//
//  Created by Sumudu Semasinghe on 11/29/23.
//

import SwiftUI

struct ScheduleViewWed: View {
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
        //upper image
        
        HStack {
            Image("Back_1")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
            Image("Back_2")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
            
        }
        Text ("Back")
            .fontWeight(.heavy)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        //text in scroll view
        ScrollView {
            VStack {
                
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                
                Text ("Pullups as many as/100")
                
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Deadlifts 10/10")
                    Text ("Riverse Grip Lat puldowns 10/12")
                    
                }
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("Wide Grip Seated Rows 5/10")
                    Text ("Lat puldowns 5/15")
                    
                }
                Group { //Superset
                    
                    Text ("Superset")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.vertical,20)
                    
                    Text ("One Handed Rows - Right 3/12")
                    Text ("One Handed Rows - Left 3/12")
                    
                }
                Text("")
                Text("Single Sets")
                    .padding()
                    .foregroundColor(Color.red)
                // .padding()
                Text ("Pullups as many as/100")
                Text ("Reverse Cable Handle 5/18")
                
            }
        }
        
        
    }
}

#Preview {
    ScheduleView()
}

