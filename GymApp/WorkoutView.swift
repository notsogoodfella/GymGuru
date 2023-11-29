//
//  WorkoutView.swift
//  GymApp
//
//  Created by Sumudu Semasinghe on 11/28/23.
//

import SwiftUI

struct WorkoutView: View {
    
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
                        Image(systemName: "arrowshape.left.circle.fill")
                            .foregroundColor(.blue)
                        Text("")
                            .foregroundColor(.blue)
                    })
                    
                    
                    
                }
            })
        //Back Navigation
        
        NavigationView{
            VStack {
                NavigationLink(destination: ScheduleView()){
                    Text("Monday")
                        .colorInvert()
                        .frame(width: 300, height: 75, alignment: .center)
                        .background(Color.black)
                        .cornerRadius(50)
                        .padding(.bottom)
                    
                }
                NavigationLink(destination: ScheduleViewTue()){
                    Text("Tuesday")
                        .colorInvert()
                        .frame(width: 300, height: 75, alignment: .center)
                        .background(Color.black)
                        .cornerRadius(50)
                        .padding(.bottom)
                    
                }
                NavigationLink(destination: ScheduleViewWed()){
                    Text("Wednesday")
                        .colorInvert()
                        .frame(width: 300, height: 75, alignment: .center)
                        .background(Color.black)
                        .cornerRadius(50)
                        .padding(.bottom)
                }
                NavigationLink(destination: ScheduleViewThurs()){
                    Text("Thursday")
                        .colorInvert()
                        .frame(width: 300, height: 75, alignment: .center)
                        .background(Color.black)
                        .cornerRadius(50)
                        .padding(.bottom)
                }
                NavigationLink(destination: ScheduleViewFri()){
                    Text("Friday")
                        .colorInvert()
                        .frame(width: 300, height: 75, alignment: .center)
                        .background(Color.black)
                        .cornerRadius(50)
                        .padding(.bottom)
                }
//                NavigationLink(destination: ScheduleViewSat()){
//                    Text("Saturday")
//                        .colorInvert()
//                        .frame(width: 300, height: 75, alignment: .center)
//                        .background(Color.black)
//                        .cornerRadius(50)
//                        .padding(.bottom)
//                }
//                NavigationLink(destination: ScheduleViewSun()){
//                    Text("Sunday")
//                        .colorInvert()
//                        .frame(width: 300, height: 75, alignment: .center)
//                        .background(Color.black)
//                        .cornerRadius(50)
//                        .padding(.bottom)
//                }
            }
        }
            
            
            
        }
    }
    

#Preview {
    WorkoutView()
}
