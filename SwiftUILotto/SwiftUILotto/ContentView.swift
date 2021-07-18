//
//  ContentView.swift
//  SwiftUILotto
//
//  Created by Angelos Staboulis on 17/7/21.
//

import SwiftUI

struct ContentView: View {
    @State var array:[Int]=[]
    @State var subitem:[Int]=[]
    var body: some View {
        Text("Simulation Lotton Game").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        List(array,id:\.self){ item in
                    if item == subitem[0] || item == subitem[1] || item == subitem[2] || item == subitem[3] || item == subitem[4] || item == subitem[5] {
                        Text(String(item)).foregroundColor(.blue)
                    }
                    else{
                        Text(String(item))
                    }
             
           

        }.onAppear {
            for item in 0..<50{
                array.append(item)
            }
            for _ in 0..<6{
                subitem.append(Int.random(in: 0..<50))
            }
        }
        Button(action: {
           drawNumbers()
        }, label: {
            Text("Draw Numbers")
        })
    }
    func drawNumbers(){
        if subitem.count > 0 {
                subitem.removeAll()
                array.removeAll()
        }
        for item in 0..<50{
            array.append(item)
        }
        for _ in 0..<6{
            subitem.append(Int.random(in: 0..<50))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
