//
//  CardSelectionVC.swift
//  fitnessChalange
//
//  Created by Ислам Пулатов on 1/7/23.
//

import UIKit

class CardSelectionVC: UIViewController {
    
//    MARK: @IBOutlet`S
    
    @IBOutlet var cardImageView: UIImageView!
    
    
    var cards: [String?] = Deck.getAllCards()
    var timer : Timer!
    
     
    
    
    
//    MARK: ViewLifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTimer()

    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    
//    MARK: FUNCTIONS
    
    func startTimer()  {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    
    
    @objc func showRandomCard()  {
        
        guard let selectedCard = cards.randomElement() else { return }
        cardImageView.image = UIImage(named: selectedCard ?? "AS")
        
    }
    
    
//    MARK: ALL @IBAction `S
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
         timer.invalidate()
        startTimer()
    }

    @IBAction func randomJokeButtonTapped(_ sender: Any) {
        
        
        
    }
    
    /*
     import UIKit

     class ViewController: UIViewController {

         @IBOutlet weak var jokeLabel: UILabel!
         
         override func viewDidLoad() {
             super.viewDidLoad()
             // Call function to fetch a random joke
             fetchRandomJoke()
         }

         func fetchRandomJoke() {
             guard let url = URL(string: "https://official-joke-api.appspot.com/random_joke") else {
                 return
             }

             URLSession.shared.dataTask(with: url) { data, response, error in
                 guard let data = data else {
                     return
                 }

                 do {
                     // Decode JSON response into a Joke object
                     let joke = try JSONDecoder().decode(Joke.self, from: data)

                     // Update label text on the main thread
                     DispatchQueue.main.async {
                         self.jokeLabel.text = joke.setup + "\n\n" + joke.punchline
                     }
                 } catch let error {
                     print(error.localizedDescription)
                 }
             }.resume()
         }

         @IBAction func fetchNewJoke(_ sender: Any) {
             // Call function to fetch a random joke
             fetchRandomJoke()
         }
     }

     struct Joke: Codable {
         let id: Int
         let type: String
         let setup: String
         let punchline: String
     }

     */
}
