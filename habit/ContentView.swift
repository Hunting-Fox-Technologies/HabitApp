//
//  ContentView.swift
//  habit
//
//  Created by Michael Yu on 1/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("SETTINGS")
                
                .font(.system(size: 25, weight: .regular, design: .default))
                .tracking(2)
                .frame(width: 290, height: 30, alignment: .topLeading)
            
                
            VStack{
                Text("SORT GOALS BY")
                .font(.system(size: 11, weight: .regular, design: .default))
                    .bold()
                    .tracking(1)
                    .frame(width: 290, height: 20, alignment: .topLeading)
                    .padding(.top,10)
                
                HStack{
                    Text("NAME")
                    Text("START")
                    Text("LAST")
                    ZStack{
                        RoundedRectangle(cornerRadius: 5.0).fill(Color.gray)
                            
                        Text("CUSTOM")
                    }
                    .frame(width: 60, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("SET")
                    
                }
                .padding(.leading,40)
                .font(.system(size: 10, weight: .regular, design: .default))
                .frame(width: 290, height: 30, alignment: .topLeading)
                    
                    
            
            }
            .frame(width: 290, height: 70, alignment: .topLeading)
            
            VStack{
                Text("APP SETTINGS")
                .font(.system(size: 11, weight: .regular, design: .default))
                    .bold()
                    .tracking(1)
                    .frame(width: 290, height: 20, alignment: .topLeading)
                    .padding(.top,10)
                
                HStack{
                    Text("SOUND:                  ")
                    Text("ON")
                    Text("OFF")
                }
                .padding(.top,5)
                .frame(width: 290, height: 20, alignment: .topLeading)
                    
                HStack{
                    Text("BACKGROUND:      ")
                    Text("LIGHT")
                    Text("DARK")
                }
                .padding(.top,5)
                .frame(width: 290, height: 20, alignment: .topLeading)
                
                HStack{
                    Text("BACKUP REMINDERS:      ")
                    Text("ON")
                    Text("OFF")
                }
                .padding(.top,5)
                .frame(width: 290, height: 20, alignment: .topLeading)
                
                HStack{
                    Text("WEEK START:      ")
                    Text("SUNDAY")
                    
                }
                .padding(.top,5)
                .frame(width: 290, height: 20, alignment: .topLeading)
                    
                HStack{
                    Text("WEEK START:      ")
                    Text("12:00 AM")
                    
                }
                .padding(.top,5)
                .frame(width: 290, height: 20, alignment: .topLeading)
            
            }
            .frame(width: 290, height: 170, alignment: .topLeading)
            
            VStack{
                Text("UTILITIES")
                .font(.system(size: 11, weight: .regular, design: .default))
                    .bold()
                    .tracking(1)
                    .frame(width: 290, height: 20, alignment: .topLeading)
                    .padding(.top,10)
                
                HStack{
                    Text("TURN PASSCODE:                  ")
                    Text("ON")
                    Text("OFF")
                }
                .padding(.top,5)
                .frame(width: 290, height: 20, alignment: .topLeading)
                    
                
                Text("ARCHIVE")
                
                .padding(.top,5)
                .frame(width: 290, height: 20, alignment: .topLeading)
            
            }
            .frame(width: 290, height: 90, alignment: .topLeading)
            
            VStack{
                Text("REMINDERS")
                .font(.system(size: 11, weight: .regular, design: .default))
                    .bold()
                    .tracking(1)
                    .frame(width: 290, height: 20, alignment: .topLeading)
                    .padding(.top,10)
                
            
                Text("GENERAL APP REMINDERS")
                    .frame(width: 290, height: 20, alignment: .topLeading)
                    
                HStack{
                    Text("REMINDER SOUND :")
                    
                    .padding(.top,5)
                    .frame(width: 290, height: 20, alignment: .topLeading)
                }
                    
                
            
            }
            .frame(width: 290, height: 90, alignment: .topLeading)
            
        }
        .frame(width: 320, height: 640, alignment: .topLeading)
        .font(.system(size: 10, weight: .regular, design: .default))
        
        
        
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
