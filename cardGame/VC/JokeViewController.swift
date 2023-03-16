//
//  JokeViewController.swift
//  fitnessChalange
//
//  Created by Ислам Пулатов on 3/8/23.
//

import UIKit

class JokeViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getJoke()
        
    }
    
    
    func getJoke() {
           guard let url = URL(string: "https://official-joke-api.appspot.com/random_joke") else { return }

           URLSession.shared.dataTask(with: url) { data, response, error in
               guard let data = data else { return }

               do {
                   let joke = try JSONDecoder().decode(Joke.self, from: data)

                   DispatchQueue.main.async {
                       self.jokeLabel.text = joke.setup + "\n\n" + joke.punchline
                   }
               } catch let error {
                   print(error.localizedDescription)
               }
           }.resume()
       }

    
    @IBAction func randomJokeButton(_ sender: Any) { getJoke() }
    
    
    

}
