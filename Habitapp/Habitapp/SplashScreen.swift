//
//  Splash Screen.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/25/21.
//

import SwiftUI

struct SplashScreen : View {
    @State var animate = false
    @State var endSplash = false
    
    var body : some View {
        ZStack{
            Home()
            
            ZStack{
                Image("Logo")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: animate ? .fill :  .fit)
                    .frame(width: animate ? nil : 85, height: animate ? nil : 85)
                    .scaleEffect(animate ? 3 : 1)
                
            
            .ignoresSafeArea(.all , edges: .all)
            .onAppear(perform: animateSplash)
                    .opacity(endSplash ? 0 : 1)
            }

    }
}

    func animateSplash(){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            
            withAnimation(Animation.easeOut(duration: 0.45)) {
                animate.toggle()
            }
            
            withAnimation(Animation.easeOut(duration: 0.35)) {
                endSplash.toggle()
            }
            
           
            
        
}
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
}
