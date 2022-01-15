//
//  ProblemStatement.swift
//  Vibrato
//
//  Created by Haotian SUN on 2022/1/12.
//

import SwiftUI

struct ProblemStatementView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("APP Design for Road Condition and Vibration Tracking")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("Problem Statement:")
                    .font(.title2)
                    .fontWeight(.bold)
                    .underline()
                Text("Please design an APP (either Android or IOS) that can leverage the sensors equipped on a smartphone to track vibration statistics of a road/street while you are driving, walking, or riding a bike. Data and statistics (e.g., distributions) are expected to be shown on a map and the route with appropriate visualization techniques, for example, in the form of a color scale.")
                Text("Requirements:")
                    .font(.title2)
                    .fontWeight(.bold)
                    .underline()
                Text("1. Develop the project on GitHub and share the link with me.")
                Text("2. Open-source map API such as Google Map or OpenStreetMap can be used.")
                Text("3. Testing is required with physical experiments. A low-fidelity setting is acceptable, e.g., mount the smartphone on a bicycle and test it on a few streets.")
                    
                Text("Format of Deliverables:")
                    .font(.title2)
                    .fontWeight(.bold)
                    .underline()
                Text("1. Please write a report of no more than three pages to summarize your works and attach the GitHub link within the report.")
                Text("2. Please prepare a PPT presentation to introduce your approaches, findings, and conclusions. You will present the slides during your second-round interview.")
            }
            .padding(.top)
        }
        .padding(.all)
    }
}

struct ProblemStatement_Previews: PreviewProvider {
    static var previews: some View {
        ProblemStatementView()
    }
}
