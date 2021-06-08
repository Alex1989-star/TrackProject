//
//  ViewController.swift
//  TrackProject
//
//  Created by Леся on 07.06.2021.
//

import UIKit


class TrackTableViewController: UITableViewController {
    
    private var trackList = Track.getTrackList()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 90
        navigationItem.leftBarButtonItem = editButtonItem
    }
}

//Mark: UITableViewDelegate
extension TrackTableViewController {
   /* override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let track = trackList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: track)
    }*/
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentTrack = trackList.remove(at: sourceIndexPath.row)
        trackList.insert(currentTrack, at: destinationIndexPath.row)
    }
}

extension TrackTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
// Mark: Navigation actions
extension TrackTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DetailTrackViewController,
        let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let track = trackList[indexPath.row]
        vc.track = track
    }
}


