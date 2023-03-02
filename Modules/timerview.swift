import SwiftUI
import UserNotifications

struct timerview: View {
    var body: some View {
        
        Home()
        
    }
}

struct timerview_Previews: PreviewProvider {
    static var previews: some View {
        timerview()
    }
}

struct Home : View {
    
    private var duration = ["60", "120", "440"]
    @State private var durationpick1 = "1"
    @State private var durationpick = 120 // <1>
    @State var start = false
    @State var to : CGFloat = 0
    @State var count = 0
    @State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View{
        let pickd = durationpick
        ZStack{
            
            Color.black.opacity(0.06).edgesIgnoringSafeArea(.all)
            
            
            VStack{
                
                ZStack{
                    
                    
                    Circle()
                        .trim(from: 0, to: self.to)
                        .stroke(Color.red, style: StrokeStyle(lineWidth: 100 ))
                        .frame(width: 100, height: 100)
                        .rotationEffect(.init(degrees: -90))
                    
                    
                    VStack{
                        
                        Text("Il reste")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                        
                        Text("\(pickd-self.count)")
                            .font(.system(size: 65))
                            .fontWeight(.bold)
                        
                        Text("Secondes")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                    }
                }
                
                HStack(spacing: 20){
                    
                    Button(action: {
                        
                        if self.count == pickd{
                            
                            self.count = 0
                            withAnimation(.default){
                                
                                self.to = 0
                            }
                        }
                        self.start.toggle()
                        
                    }) {
                        
                        HStack(spacing: 15){
                            
                            Image(systemName: self.start ? "pause.fill" : "play.fill")
                                .foregroundColor(.white)
                        }
                        .padding(.vertical)
                        .frame(width: 70, height: 40)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        
                    }
                    
                    Button(action: {
                        
                        self.count = 0
                        
                        withAnimation(.default){
                            
                            self.to = 0
                        }
                        
                    }) {
                        
                        HStack(spacing: 5){
                            
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.white)
                            
                            
                        }
                        .padding(.vertical)
                        .frame(width: 70, height: 40)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        
                        
                        
                        
                    }
                }
                .padding(.top, 55)
                VStack {
                    Picker("Duration", selection: $durationpick1, content: {
                        ForEach(duration, id: \.self, content: { color in
                            Text(color)
                            
                        })
                        
                    })
                    Text("Duration : \(durationpick)")                }
            }
            
        }
        .onAppear(perform: {
            
            UNUserNotificationCenter.current().requestAuthorization(options: [.badge,.sound,.alert]) { (_, _) in
            }
        })
        .onReceive(self.time) { (_) in
            
            
            
            if self.start{
                
                if self.count != pickd {
                    
                    self.count += 1
                    print("hello")
                    
                    withAnimation(.default){
                        
                        self.to = CGFloat(self.count) / CGFloat(pickd)
                    }
                }
                else{
                    
                    self.start.toggle()
                    self.Notify()
                }
                
            }
            
        }
    }
    
    func Notify(){
        
        let content = UNMutableNotificationContent()
        content.title = "Message"
        content.body = "Timer Is Completed Successfully In Background !!!"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        
        let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
    }
}


