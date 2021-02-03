//
//  SetOrder.swift
//  Habitapp
//
//  Created by Brandon Suarez on 2/1/21.
//

import SwiftUI

struct SetOrder : View {
    //State Variable for the CANCEL Button
    @Environment(\.presentationMode) var presentationMode
    
    var body : some View {
        VStack(alignment : .leading){
            HStack{
                Text("SET ORDER")
                    .font(.system(size: 25, weight: .regular, design: .default))
                    .foregroundColor(.black)
                Spacer()
                    .frame(width : 73)
                Button(action : {
                    //some actions
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Text("CANCEL")
                        .font(.system(size: 10, weight: .regular, design: .default))
                        .frame(width: 64, height: 18, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named : "DarkGray")!))
                        .cornerRadius(5)
                }
                Spacer()
                    .frame(width : 9)
                Button(action : {
                    //some action
                }){
                    Text("SAVE")
                        .font(.system(size: 10, weight: .regular, design: .default))
                        .foregroundColor(.white)
                        .frame(width: 49, height: 18, alignment: .center)
                        .background(Color(UIColor(named :  "BBlue")!))
                        .cornerRadius(5)
                }
                
            }
            Spacer()
                .frame(height : 115)
            VStack(spacing : 15 ){
                DragBox(title: "SAMPLE 4", color: "CC2")
                DragBox(title: "SAMPLE 5", color: "CC3")
                DragBox(title: "SAMPLE 6", color: "CC1")
            }
            Spacer()
        }
    }
}


struct SetOrder_Previews : PreviewProvider {
    static var previews : some View {
        SetOrder()
    }
}

struct DragBox : View {
    var title : String
    var color : String
    
    var body : some View {
        HStack(spacing : 30) {
            Text("\(title)")
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(.black)
                .frame(width: 290, height: 51, alignment: .center)
                .background(Color(UIColor(named : "\(color)")!))
                .cornerRadius(5)
            Image("Drager")
        }
        
    }
}
