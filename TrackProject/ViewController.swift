//
//  ViewController.swift
//  TrackProject
//
//  Created by Леся on 07.06.2021.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private let trackList = Track.getTrackList()
        
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 90
        
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackCell", for: indexPath)
        
        let track = trackList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = track.song
        content.secondaryText = track.artist
        content.image = UIImage(named: track.title)
        
        cell.contentConfiguration = content
        
        
        return cell
    }
}

