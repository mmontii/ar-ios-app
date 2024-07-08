//
//  PostCardView.swift
//  ArCamp
//
//  Created by Mantas Ercius on 08.07.24.
//

import SwiftUI

struct PostCardView: View {
    var post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(post.title)
                .font(.headline)
            Text(post.description)
                .font(.subheadline)
            Text("Date: \(post.date)")
                .font(.caption)
            ForEach(post.important_dates, id: \.self) { date in
                Text(date)
                    .font(.caption2)
            }
            Link("More info", destination: URL(string: post.link)!)
                .font(.caption)
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding([.top, .horizontal])
    }
}
