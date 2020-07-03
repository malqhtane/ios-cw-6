//
//  MoviesMasterVC2.swift
//  Classwork6
//
//  Created by shaikha alqhtane on 7/3/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit
var selectedMovie = Movie(movieName: "NOTHING", movieReleaseDate: 200, actors: [], rating: 0.0, pgRating: "PG 13")
class MoviesMasterVC2: UIViewController {

    @IBOutlet weak var marvekBtn0: UIButton!
    @IBOutlet weak var marvekBtn1: UIButton!
    @IBOutlet weak var marvekBtn2: UIButton!
    @IBOutlet weak var marvekBtn3: UIButton!
    @IBOutlet weak var marvekBtn4: UIButton!
    @IBOutlet weak var marvekBtn5: UIButton!
    
    @IBOutlet weak var dcBtn0: UIButton!
    @IBOutlet weak var dcBtn1: UIButton!
    @IBOutlet weak var dcBtn2: UIButton!
    @IBOutlet weak var dcBtn3: UIButton!
    @IBOutlet weak var dcBtn4: UIButton!
    @IBOutlet weak var dcBtn5: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDCImages()
        // Do any additional setup after loading the view.
    }
    func setMarvelImages(){
        marvekBtn0.setBackgroundImage(UIImage(named: MarvelMovieData[0].movieName), for:.normal)
        marvekBtn1.setBackgroundImage(UIImage(named: MarvelMovieData[1].movieName), for:.normal)
        marvekBtn2.setBackgroundImage(UIImage(named: MarvelMovieData[2].movieName), for:.normal)
        marvekBtn3.setBackgroundImage(UIImage(named: MarvelMovieData[3].movieName), for:.normal)
        marvekBtn4.setBackgroundImage(UIImage(named: MarvelMovieData[4].movieName), for:.normal)
        marvekBtn5.setBackgroundImage(UIImage(named: MarvelMovieData[5].movieName), for:.normal)
    }
    func setDCImages(){
        dcBtn0.setBackgroundImage(UIImage(named: DCMovieData[0].movieName), for:.normal)
        dcBtn1.setBackgroundImage(UIImage(named: DCMovieData[1].movieName), for:.normal)
        dcBtn2.setBackgroundImage(UIImage(named: DCMovieData[2].movieName), for:.normal)
        dcBtn3.setBackgroundImage(UIImage(named: DCMovieData[3].movieName), for:.normal)
        dcBtn4.setBackgroundImage(UIImage(named: DCMovieData[4].movieName), for:.normal)
        dcBtn5.setBackgroundImage(UIImage(named: DCMovieData[5].movieName), for:.normal)
    }

    @IBAction func marvelBtns(_ sender: UIButton) {
        let index = sender.tag
        selectedMovie = MarvelMovieData[index]
        //لتنقل الى صفحه الـdetails ليش nil? لان ماابي ادز شي!!! "جسر جابر"
        performSegue(withIdentifier: "details", sender: nil)
    }
    
    
    
    @IBAction func dcBtns(_ sender: UIButton) {
        let index = sender.tag
        selectedMovie = DCMovieData[index]
//"جسر جابر"
        performSegue(withIdentifier: "details", sender: nil)
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
