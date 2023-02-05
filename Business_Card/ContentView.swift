import SwiftUI

struct ContentView: View {
    @State private var showImage = false

    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()

            VStack {
                if showImage {
                    QR_Code()
                        .transition(.opacity.animation(.easeInOut(duration: 1)))
                        .shadow(radius: 30)
                        .onTapGesture {
                            self.showImage = false
                        }

                    Text("Mercedes Benz")
                        .font(.custom("Times New Roman", size: 45))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.top, 30)
                        .offset(y: 40)
                        .shadow(radius: 10, x: 0, y: 10)

                    Button(action: { self.showImage = false }) {
                        Text("Go back")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .offset(y: 60)
                } else {
                    CircleLogo()
                        .offset(y: -100)
                        .padding(.bottom, -130)
                        .padding(.top, 75)
                        .transition(.opacity.animation(.easeInOut(duration: 1)))
                        .onTapGesture {
                            self.showImage = true
                        }

                    Text("Mercedes Benz")
                        .font(.custom("Times New Roman", size: 45))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.top, 30)
                        .offset(y: 65)
                        .shadow(radius: 10, x: 0, y: 10)

                    Button(action: { self.showImage = true }) {
                        Text("Click to scan")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .offset(y: 85)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
