//
//  Artchive.swift
//  Habitapp
//
//  Created by Brandon Suarez on 2/2/21.
//

import SwiftUI

struct Archive : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack(alignment : .leading) {
            HStack(spacing : 181){
                Text("ARCHIVE")
                    .font(.system(size: 25, weight: .regular, design: .default))
                    .foregroundColor(.black)
                    .kerning(2)
                
                Button(action : {
                    //Some actions
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Text("DONE")
                        .font(.system(size: 10, weight: .regular, design: .default))
                        .foregroundColor(.white)
                        .frame(width: 52, height: 18, alignment: .center)
                        .background(Color(UIColor(named : "BBlue")!))
                        .cornerRadius(5)
                }
                
            }
            .padding(.bottom, 90)
            Text("SELECT TO UNARCHIVE")
                .font(.system(size: 12, weight: .regular, design: .default))
                .foregroundColor(.black)
                .kerning(2)
                .padding(.bottom,30)
            
            item(title: "SAMPLE 4", color: "CC2")
            Spacer()
        }
    }
}

struct Archive_Previews : PreviewProvider {
    static var previews : some View{
        Archive()
    }
}

struct item : View {
    var title : String
    var color : String
    var body : some View {
        Text(title)
            .font(.system(size: 15, weight: .bold, design: .default))
            .foregroundColor(.black)
            .frame(width: 333, height: 51, alignment: .center)
            .background(Color(UIColor(named : color)!))
            .cornerRadius(5)
            .padding(.bottom,30)
    }
}
