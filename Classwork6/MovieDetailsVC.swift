//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by shaikha alqhtane on 7/3/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {

   
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieRatingView: UIView!
    @IBOutlet weak var movieRatedLabel: UILabel!
    @IBOutlet weak var movieRatedView: UIView!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var releaseDateView: UIView!
    
    @IBOutlet weak var actorImageView1: UIImageView!
    @IBOutlet weak var actorImagelabel1: UILabel!
    @IBOutlet weak var actorImageView2: UIImageView!
    @IBOutlet weak var actorImagelabel2: UILabel!
    @IBOutlet weak var actorImageView3: UIImageView!
    @IBOutlet weak var actorImagelabel3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    func setMovieDetails(){
        //Image
        movieImageView.image=UIImage(named:selectedMovie.movieName)
        //Labels
        movieRatingLabel.text = "\(selectedMovie.rating)"
        movieRatedLabel.text=selectedMovie.pgRating
        releaseDateLabel.text = "\(selectedMovie.movieReleaseDate)"
        //Actors
        actorImageView1.image=UIImage(named: selectedMovie.actors[0])
        actorImageView2.image=UIImage(named: selectedMovie.actors[1])
        actorImageView3.image=UIImage(named: selectedMovie.actors[2])
        
        actorImagelabel1.text=selectedMovie.actors[0]
        actorImagelabel1.text=selectedMovie.actors[1]
        actorImagelabel1.text=selectedMovie.actors[2]
    }
    func configureUI(){
        //carve
        movieRatedView.layer.cornerRadius = 12
        movieRatingView.layer.cornerRadius = 12
        releaseDateView.layer.cornerRadius = 12
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
