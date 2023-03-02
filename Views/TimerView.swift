//
//  TimerView.swift
//  GlobalStudy Multi
//
//  Created by Antoine Richard-capponi on 01/03/2023.
//

import SwiftUI

struct TimerView: View {
    @State private var isRunning = false
    @State private var seconds = 0
    @State private var duration = 1
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            ColorfulView()
        VStack {
            CircularProgressBar(value: Double(seconds), total: Double(duration * 60))
                .frame(width: 200, height: 200)
            
            Text("\(seconds)")
                .font(.largeTitle)
            
            HStack {
                Text("Modifier la durée :")
                    .bold()
                TextField("Entrer la durée en minutes", value: $duration, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
            }
            .padding()
    
            
            Button(action: {
                self.isRunning.toggle()
            }) {
                if isRunning {
                    Text("Arret")
                } else {
                    Text("Début")
                }
            }
            .padding()
            .background(Color.white)
            .foregroundColor(.black)
            .clipShape(Circle())
            
            
            Button(action: {
                self.seconds = 0
            }) {
                Text("0")
            }
            .padding()
            .background(Color.white)
            .foregroundColor(.black)
            .clipShape(Circle())
        }
        .onReceive(timer) { _ in
            if self.isRunning {
                self.seconds += 1
                if self.seconds == self.duration * 60 {
                    self.seconds = 0
                    self.isRunning = false
                }
            }
        }
        }
    }
}

struct CircularProgressBar: View {
    var value: Double
    var total: Double
    var color = Color.red
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.white, lineWidth: 10)
            
            Circle()
                .trim(from: 0, to: CGFloat(value / total))
                .stroke(color, lineWidth: 10)
                .rotationEffect(Angle(degrees: -90))
                .animation(.linear)
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
