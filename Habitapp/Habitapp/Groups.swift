//
//  Groups.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/27/21.
//

import SwiftUI

struct Groups : View {
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
    }
}

struct Groups_Preview : PreviewProvider {
    
    static var previews : some View {
        Groups()
    }
}
