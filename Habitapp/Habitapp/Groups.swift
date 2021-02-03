//
//  Groups.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/27/21.
//

import SwiftUI

struct Groups : View {
    @Environment(\.presentationMode) var presentationMode
    
    var body : some View {
        ZStack{
            VStack{
                HStack{
                    BigTitle(title: "GROUPS:")
                    Spacer()
                        .frame(width : 116)
                    Button(action : {
                        //Some action
                    }) {
                        Text("CREATE")
                            .font(.system(size: 10, weight: .regular, design: .default))
                            .foregroundColor(.black)
                            .frame(width: 62, height: 18, alignment: .center)
                            .background(Color(UIColor(named : "LightGray")!))
                            .cornerRadius(5)
                    }
                    Spacer()
                        .frame(width : 30)
                    Button(action : {
                        //Some code
                        self.presentationMode.wrappedValue.dismiss()
                    }){
                        Image("Exit X")
                    }
                }
                Spacer()
                    //.frame(height : 614)
                Text("(Swipe Group to Edit/Delete)")
                    .font(.system(size: 10, weight: .regular, design: .default))
                    .foregroundColor(.black)
                    .kerning(2)
                    .padding(.bottom ,60)
            }
        }
        .frame(maxWidth :.infinity , maxHeight: .infinity)
    }
}

struct Groups_Preview : PreviewProvider {
    
    static var previews : some View {
        Groups()
    }
}
