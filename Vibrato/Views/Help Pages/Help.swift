//
//  Help.swift
//  Vibrato
//
//  Created by Haotian SUN on 2022/1/12.
//

import SwiftUI

struct HelpView: View {
    @State var showProblemStatement = false
    @State var showPersonalWebsite = false
    var body: some View {
        Group{
            NavigationView {
                List {
                    VStack(alignment: .leading) {
                        Text("Hey, what is Vibrato?")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.orange)
                                .padding(.vertical)
                        Text("Vibrato is an intial application that serves as a possible solution to the programming challenge (Press the button to see more):")
                            .font(.body)
                            .fixedSize(horizontal: false, vertical: true)
                        HStack {
                            Spacer()
                            Button {
                                self.showProblemStatement = true
                            } label: {
                                Image(systemName: "doc.fill")
                                Text("Present Problem Statement")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            }
                                .tint(.orange)
                                .buttonStyle(.borderedProminent)
                                .padding([.leading, .bottom, .trailing])
                                .sheet(isPresented: $showProblemStatement, content: {
                                    ProblemStatementView()
                            })
                            Spacer()
                        }
                    }
                        
                    VStack(alignment: .leading) {
                        Text("OK, what can Vibrato do?")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.orange)
                                .padding(.bottom)
                        Text("Vibrato is an intial application that serves as a possible solution to the programming challenge，Vibrato is an intial application that serves as a possible solution to the programming challenge，Vibrato is an intial application that serves as a possible solution to the programming challenge，Vibrato is an intial application that serves as a possible solution to the programming challenge，")
                            .font(.body)
                    }
                    VStack(alignment: .leading) {
                        Text("Oh, any privacy issues?")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.orange)
                                .padding(.bottom)
                        Text("Vibrato is an intial application that serves as a possible solution to the programming challenge，Vibrato is an intial application that serves as a possible solution to the programming challenge，Vibrato is an intial application that serves as a possible solution to the programming challenge，Vibrato is an intial application that serves as a possible solution to the programming challenge，")
                            .font(.body)
                    }
                    HStack {
                         Spacer()
                         Button {
                             self.showPersonalWebsite = true
                         } label: {
                             Image("IconPersonalWebsite")
                                 .resizable()
                                 .frame(width: 40, height: 45)
                                 .aspectRatio(contentMode: .fit)
                             Text("Visit My Personal Website")
                                 .font(.headline)
                                 .fontWeight(.bold)
                                 .clipShape(RoundedRectangle(cornerRadius: 5))
                         }
                             .tint(.orange)
                             .buttonStyle(.borderedProminent)
                             .padding()
                             .sheet(isPresented: $showPersonalWebsite, content: {
                                 PersonalWebsiteView()
                         })
                         Spacer()
                     }
                }
                .navigationTitle("Help")}
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
