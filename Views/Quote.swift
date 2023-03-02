import SwiftUI

struct Quotefull: View {
    var body: some View {
        VStack{
        
            
            HStack{
                VStack(spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Image(systemName: "quote.opening")
                            .imageScale(.medium)
                            .foregroundColor(Color.secondary)
                        
                            .clipped()
                            .font(.title3)
                            .padding(.bottom)
                            .colorInvert()
                        quotev()
                            .font(.body)
                            .fixedSize(horizontal: false, vertical: false)
                            .lineSpacing(1)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .colorInvert()
                    }
                    .padding()
                    HStack {
                        VStack(alignment: .leading) {
                            quoteva()
                                .font(Font.system(.subheadline, design: .default).weight(.semibold))
                                .foregroundColor(Color.primary)
                                .colorInvert()
                            
                            Text("Quote of the minute")
                                .foregroundColor(Color.secondary)
                                .font(.footnote)
                                .colorInvert()
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .clipped()
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(RoundedRectangle(cornerRadius: 0, style: .continuous)
                        .fill(Color.primary.opacity(0.4)), alignment: .center)
                } // quote view
                .clipped()
                .background(Rectangle()
                    .fill(Color.primary.opacity(0.6)), alignment: .center)
                
                
                
                .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .colorInvert()
            }
            .padding()
        }
    }
    
}

struct Quote_previews: PreviewProvider {
    static var previews: some View {
        Quotefull()
    }
}

struct Quote_previews2: PreviewProvider {
    static var previews: some View {
        quotev()
    }
}
