//
//  DetailTrackViewController.swift
//  TrackProject
//
//  Created by Леся on 08.06.2021.
//

import UIKit

class DetailTrackViewController: UIViewController {
    
    @IBOutlet weak var trackTitleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var track: Track?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        trackTitleLabel.text = track?.title
        if let track = track,
           let image = UIImage(named: track.title) {
            imageView.image = image
        }
    }
}
