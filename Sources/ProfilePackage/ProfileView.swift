//
//  ProfileView.swift
//  MyGameApps
//
//  Created by Rizky Ramadhan on 30/01/23.
//

import SwiftUI

public struct ProfileView: View {
    public init() {}
    public var image = UserDefaults.standard.string(forKey: "PROFILE_IMAGE") ?? ""
    public var name = UserDefaults.standard.string(forKey: "PROFILE_NAME") ?? ""
    public var job = UserDefaults.standard.string(forKey: "PROFILE_JOB") ?? ""
    public var body: some View {
        ZStack {
            Color.gray
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(200)
                Text(name)
                    .foregroundColor(.white)
                    .font(.title)
                Text(job)
                    .foregroundColor(.white)
                    .font(.headline)
            }
        }
    }
}
