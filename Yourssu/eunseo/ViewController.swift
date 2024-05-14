import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var abstructButton: UIButton!
    
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBOutlet weak var divideButton: UIButton!
    
    @IBOutlet weak var inputFirst: UITextField!
    
    @IBOutlet weak var inputSecond: UITextField!
    
    @IBOutlet weak var info: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        info.text = "버튼을 눌러주세요!"
    }

    @IBAction func divideButton(_ sender: Any) {
        guard let a = Double(inputFirst.text ?? ""), let b = Double(inputSecond.text ?? "") else {
            info.text = "값을 먼저 입력해주세요"
            return
        }
        
        if b == 0 {
            info.text = "0으로 나눌 수 없습니다"
            return
        }
        
        let result = a / b
        info.text = "\(result)"
    }
    
    @IBAction func multipeButton(_ sender: Any) {
        guard let a = Double(inputFirst.text  ?? ""), let b = Double(inputSecond.text ?? "") else {
            info.text = "값을 먼저 입력해주세요"
            return
        }
        
        let result = a * b
        info.text = "\(result)"
    }
    
    @IBAction func substractButton(_ sender: Any) {
        guard let a = Double(inputFirst.text ?? ""), let b = Double(inputSecond.text ?? "") else {
            info.text = "값을 먼저 입력해주세요"
            return
        }
        
        let result = a - b
        info.text = "\(result)"
    }
    
    @IBAction func addedButton(_ sender: Any) {
        guard let a = Double(inputFirst.text ?? ""), let b = Double(inputSecond.text ?? "") else {
            info.text = "값을 먼저 입력해주세요"
            return
        }
        
        let result = a + b
        info.text = "\(result)"
    }
}

