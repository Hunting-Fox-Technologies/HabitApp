//
//  Home.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/19/21.
//

import SwiftUI

struct Home: View {
    @State var isPresentedSettings = false
    @State var isPresentedCreate = false
    @State var isPresentedSummary = false
    
    var body : some View {
        ZStack{
            VStack{
                HStack{
                    Spacer().frame(width:145)
                    Text("TODAY").font(.system(size: 25, weight: .regular, design: .default))
                        .kerning(5)
                    Spacer().frame(width: 98)
                    Image("Question Mark")
                    Image("Separator")
                    Image("4 Dots")
                    Spacer().frame(width:30)
                }
                .frame(maxWidth : .infinity)
                //.padding(.top,21)
                Spacer()
                HStack{
                    Spacer().frame(width : 30)
                    //Code of the Settings Button
                    Button(action : {
                        //Some actions
                        self.isPresentedSettings.toggle()
                    }) {
                        Image("Gear")
                    }
                    .fullScreenCover(isPresented : $isPresentedSettings,
                                     content : FullScreenModalViewSettings.init)
                    Spacer().frame(width : 141)
                    //End of the Code of the Settings Button
                    
                    //Code of the Plus Button
                    Button (action : {
                        //Some actions
                        self.isPresentedCreate.toggle()
                    }) {
                        Image("Plus")
                    }
                    .fullScreenCover(isPresented: $isPresentedCreate, content: FullScreenModalViewCreate.init)
                    Spacer().frame(width : 141)
                    //End of the Code of the Plus Button
                    
                    Button(action : {
                        //some actions
                        self.isPresentedSummary.toggle()
                    }){
                        
                    Image("Graph")
                        
                    }
                    .fullScreenCover(isPresented: $isPresentedSummary, content: FullScreenModalViewSummary.init)
                    Spacer().frame(width : 30)
                }
                .frame(maxWidth : .infinity)
                .padding(.bottom,9)
            }
        }
        .frame(maxWidth :.infinity , maxHeight: .infinity)
        //.edgesIgnoringSafeArea(.all)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


//This is the calling function for the Plus button
struct FullScreenModalViewCreate : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack{
            Create()
        }
        .frame(maxWidth : .infinity ,maxHeight: .infinity) // maxHeight: .infinity
    }
}
//-------------------------------------------------

//This is the calling fuction for the Settings Button
struct FullScreenModalViewSettings : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack{
            Settings()
        }
    }
}
//-------------------------------------------------


//This is the calling fuction for the Summary Button
struct FullScreenModalViewSummary : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack{
            Summary()
        }
    }
}
//-------------------------------------------------

