import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var abstructButton: UIButton!
    
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBOutlet weak var divideButton: UIButton!
    
    @IBOutlet weak var inputFirstTextField: UITextField!
    
    @IBOutlet weak var inputSecondTextField: UITextField!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "버튼을 눌러주세요!"
    }

    @IBAction func divideButtonTapped(_ sender: Any) {
        guard let a = Double(inputFirstTextField.text ?? ""), let b = Double(inputSecondTextField.text ?? "") else {
            infoLabel.text = "값을 먼저 입력해주세요"
            return
        }
        
        if b == 0 {
            infoLabel.text = "0으로 나눌 수 없습니다"
            return
        }
        
        let result = a / b
        infoLabel.text = "\(result)"
    }
    
    @IBAction func multipeButtonTapped(_ sender: Any) {
        guard let a = Double(inputFirstTextField.text  ?? ""), let b = Double(inputSecondTextField.text ?? "") else {
            infoLabel.text = "값을 먼저 입력해주세요"
            return
        }
        
        let result = a * b
        infoLabel.text = "\(result)"
    }
    
    @IBAction func substractButtonTapped(_ sender: Any) {
        guard let a = Double(inputFirstTextField.text ?? ""), let b = Double(inputSecondTextField.text ?? "") else {
            infoLabel.text = "값을 먼저 입력해주세요"
            return
        }
        
        let result = a - b
        infoLabel.text = "\(result)"
    }
    
    @IBAction func addedButtonTapped(_ sender: Any) {
        guard let a = Double(inputFirstTextField.text ?? ""), let b = Double(inputSecondTextField.text ?? "") else {
            infoLabel.text = "값을 먼저 입력해주세요"
            return
        }
        
        let result = a + b
        infoLabel.text = "\(result)"
    }
}

