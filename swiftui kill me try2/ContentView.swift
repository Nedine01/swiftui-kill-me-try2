//
//  ContentView.swift
//  swiftui kill me try2
//
//  Created by Yasmine Rafid on 11/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body : some View {
        VStack(spacing: 0){
            
            HStack {
                
                Button(action: {
                    
                }) {
                    Image(systemName: "circle.grid.2x2")
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "person")
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                
                
            }
            
            .padding(.horizontal)
            .padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top)! + 5)
            .padding(.bottom, 80)
            .background(Color("top"))
            .clipShape(Corners(corner: [.bottomRight], size: CGSize(width: 55, height: 55)))
            
            HStack{
                
                VStack{
                    
                    HStack {
                        
                            VStack(alignment: .leading, spacing: 15) {
                                
                                Text("Welcome")
                                    .font(.title)
                                
                                Text("Find your \ndream Job!")
                                    .font(.system(size: 35))
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(.black)
                            
                            Spacer()
                        }
                    .padding(.leading, 30)
                    .padding(.top, 50)
                    
                }
                //setting custom width
                .padding(.bottom, 70)
                .frame(width: UIScreen.main.bounds.width - 100)
                .background(Color("select"))
                .clipShape(Corners(corner: [.topLeft,.topRight,.bottomRight], size: CGSize(width: 70, height: 70)))
                
                
                Spacer()
                
            }
            //moving view up
            .padding(.top, -50)
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
    }
}

struct Corners : Shape {
    
    var corner : UIRectCorner
    var size : CGSize
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: size)
        
        return Path(path.cgPath)
        
        
    }
}
