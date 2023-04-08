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
    

//   MARK: Var`s
    
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
}
