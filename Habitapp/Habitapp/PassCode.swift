//
//  PassCode.Enter.swift
//  Habitapp
//
//  Created by Brandon Suarez on 2/2/21.
//

import SwiftUI

struct Passcode : View {
    @State var z0 = 10
    @State var delete = false
    var body : some View {
        VStack{
            Text("Enter Passcode")
                .font(.system(size: 25, weight: .regular, design: .default))
                .foregroundColor(.black)
                .kerning(5)
            Spacer()
                .frame(height : 30)
            HStack(spacing : 11){
                ForEach([1,2,3,4] , id : \.self) { _ in
                    Circle()
                        .stroke(Color.black)
                        .frame(width: 15, height: 15, alignment: .center)
                        

                }
            }
            Spacer()
                .frame(height : 30)
            
            VStack(alignment : .center, spacing : 15) {
                HStack(spacing : 15){
                    Button(action : {
                        //Some actions
                        self.z0 = 1
                    }){
                        inputCircle(number: "1")
                    }
                    Button(action : {
                        //Some actions
                        self.z0 = 2
                    }){
                        inputCircle(number: "2")
                    }
                    Button(action : {
                        //Some actions
                        self.z0 = 3
                    }){
                        inputCircle(number: "3")
                    }
                }
                HStack(spacing : 15){
                    Button(action : {
                        //Some actions
                        self.z0 = 4
                    }){
                        inputCircle(number: "4")
                    }
                    Button(action : {
                        //Some actions
                        self.z0 = 5
                    }){
                        inputCircle(number: "5")
                    }
                    Button(action : {
                        //Some actions
                        self.z0 = 6
                    }){
                        inputCircle(number: "6")
                    }
                }
                HStack(spacing : 15){
                    Button(action : {
                        //Some actions
                        self.z0 = 7
                    }){
                        inputCircle(number: "7")
                    }
                    Button(action : {
                        //Some actions
                        self.z0 = 8
                    }){
                        inputCircle(number: "8")
                    }
                    Button(action : {
                        //Some actions
                        self.z0 = 9
                    }){
                        inputCircle(number: "9")
                    }
                }
                HStack{
                    Spacer()
                        .frame(width : 101)
                    Button(action : {
                        //Some actions
                        self.z0 = 0
                    }){
                        inputCircle(number: "0")
                    }
                    Spacer()
                        .frame(width : 30)
                    Button(action : {
                        //Some actions
                        self.delete.toggle()
                        
                    }){
                        Text("Delete")
                            .font(.system(size: 20, weight: .regular, design: .default))
                            .foregroundColor(.black)
                    }
                    
                }
            }
            
        }
    }
}

struct Passcode_Previews : PreviewProvider {
    static var previews : some View {
        Passcode()
    }
}

struct inputCircle : View {
    var number : String
    var body : some View {
        Text(number)
            .font(.system(size: 50, weight: .light, design: .default))
            .foregroundColor(.black)
            .frame(width: 86, height: 86, alignment: .center)
            .overlay(
                Circle()
                    .stroke( Color.black)
            )
    }
}
