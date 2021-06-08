//
//  Track.swift
//  TrackProject
//
//  Created by Леся on 07.06.2021.
//

struct Track {
    let artist: String
    let song: String
    
    var title: String {
        "\(artist) - \(song)"
    }
}

extension Track {
    static func getTrackList() -> [Track] {
        [
        Track(artist: "Metallica", song: "Mama Said"),
        Track(artist: "Metallica", song: "One"),
        Track(artist: "Metallica", song: "Fuel"),
        Track(artist: "Metallica", song: "Fade To Black"),
        Track(artist: "Metallica", song: "Turn the Page"),
        Track(artist: "Metallica", song: "Master Of Puppets"),
        Track(artist: "Metallica", song: "Sad But True"),
        Track(artist: "Metallica", song: "Enter Sandman"),
        Track(artist: "Metallica", song: "The Unforgiven"),
        Track(artist: "Metallica", song: "Nothing Else Matters"),
        Track(artist: "Metallica", song: "Creeping Death"),
        Track(artist: "Metallica", song: "Battery")
        ]
    }
}
