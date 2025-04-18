
import UIKit

class ViewController: UIViewController {
    
    // MARK: - Game init
    /// Model start game
    private let game = Game()
    
    
    // MARK: - IB Outlet
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
  
    // MARK: - Update UI
    /// Refreshes all UI on the screen
    private func updateUI() {
        game.state()
        let imageName = "Tree \(game.incorrectMovesRemaining)"
        treeImageView.image = UIImage(named: imageName)
        scoreLabel.text = "Win: \(game.totalWins)       Losses: \(game.totalLosses)"
        updateCorrectWordLabel()
        buttonOn()
    }
    
    /// Refreshes WordLabel
    private func updateCorrectWordLabel() {
        var displayWord = [String]()
        for latter in game.guessedWord {
            displayWord.append(String(latter))
        }
        correctWordLabel.text = displayWord.joined(separator: " ")
    }
    
    
    // MARK: - Turn on Button
    /// Enable all buttons
    private func buttonOn() {
        for button in letterButtons {
            if game.onButton {
                button.isEnabled = true
            }
        }
        game.onButton = false
    }
    
    
    // MARK: - Action
    @IBAction func pressedLetterButton(_ sender: UIButton) {
        sender.isEnabled = false
        let letter = sender.title(for: .normal)!
        game.playerGuessed(letter: Character(letter))
        updateUI()
    }
}

