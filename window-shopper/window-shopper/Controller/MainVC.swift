import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wagetxt: CurrencyTxtField!
    @IBOutlet weak var pricetxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let calcBtn = UIButton(frame: CGRect(x: 0, y:0, width:  view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5783185848, blue: 0.008888401303, alpha: 1)
        calcBtn.setTitle( "Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
        // on load hide label and button
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        clearButton.isHidden = true
        
        
        //close calculator
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(MainVC.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func calculate(){
        if let wageText = wagetxt.text , let priceText = pricetxt.text {
            if let wage = Double(wageText), let price = Double(priceText){
                dismissKeyboard()
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                clearButton.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, forPrice: price))"
            }
        }
       
    }

    @IBAction func clearInputs(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wagetxt.text = ""
        pricetxt.text = ""
    }
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }
}

