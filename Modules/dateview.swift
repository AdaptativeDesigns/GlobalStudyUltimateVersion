import SwiftUI

let now = Date() // Dec 6, 2020 at 2:51 PM
let twoDays: TimeInterval = 2 * 24 * 60 * 60
let date = now // Dec 8, 2020 at 2:51 PM

struct dateview: View {
    var body: some View {
        ZStack{
            
            VStack {
                // 2:51 PM
                
                
                Text(date, style: .date)
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(Color.primary)
                    .clipShape(RoundedRectangle(cornerRadius: 7))
                
                
                
                
                
            }
        }
    }
}

struct dateview_Previews: PreviewProvider {
    static var previews: some View {
        dateview()
    }
}

