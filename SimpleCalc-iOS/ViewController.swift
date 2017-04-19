//
//  ViewController.swift
//  SimpleCalc-iOS
//
//  Created by Quan Nguyen on 4/17/17.
//  Copyright © 2017 Quan Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var number1 : Double = 0;
    private var number2 : Double = 0;
    private var result : String = "";
    private var pressOpt : Bool = false;
    @IBOutlet weak var userView: UITextField!
    @IBAction func pressOne(_ sender: Any) {
        result = result + "1";
        userView.text = result;
        pressOpt = false;

    }
    @IBAction func pressTwo(_ sender: Any) {
        result = result + "2";
        userView.text = result;
        pressOpt = false;

    }
    @IBAction func pressThree(_ sender: Any) {
        result = result + "3";
        userView.text = result;
        pressOpt = false;

    }
    @IBAction func pressFour(_ sender: Any) {
        result = result + "4";
        userView.text = result;
        pressOpt = false;

    }
    @IBAction func pressFive(_ sender: Any) {
        result = result + "5";
        userView.text = result;
        pressOpt = false;

    }
    @IBAction func pressSix(_ sender: Any) {
        result = result + "6";
        userView.text = result;
        pressOpt = false;

    }
    @IBAction func pressSeven(_ sender: Any) {
        result = result + "7";
        userView.text = result;
        pressOpt = false;

    }
    @IBAction func pressEight(_ sender: Any) {
        result = result + "8";
        userView.text = result;
        pressOpt = false;

    }
    @IBAction func pressNine(_ sender: Any) {
        result = result + "9";
        userView.text = result;
        pressOpt = false;

    }
    @IBAction func pressZero(_ sender: Any) {
        result = result + "0";
        userView.text = result;
    }
    @IBAction func pressClear(_ sender: Any) {
        result = "";
        userView.text = result;
        pressOpt = false;
    }
    @IBAction func pressPlus(_ sender: Any) {
        if(pressOpt){
            result.remove(at: result.index(before: result.endIndex));
        }else{
            pressOpt = true;
        }
        result = result + "+";
        userView.text = result;

    }
    @IBAction func pressSub(_ sender: Any) {
        if(pressOpt){
            result.remove(at: result.index(before: result.endIndex));
        }else{
            pressOpt = true;
        }
        result = result + "-";
        userView.text = result;
    }
    @IBAction func pressDiv(_ sender: Any) {
        if(pressOpt){
            result.remove(at: result.index(before: result.endIndex));
        }else{
            pressOpt = true;
        }
        result = result + "/";
        userView.text = result;
    }
    @IBAction func pressEqual(_ sender: Any) {
        var numbers = result.components(separatedBy: "%");
        if(numbers.count == 2){
            var number1 = Double(numbers[0].trimmingCharacters(in: CharacterSet.whitespacesAndNewlines));
            var number2 = Double(numbers[1].trimmingCharacters(in: CharacterSet.whitespacesAndNewlines));
            let resultCalc = number1!.truncatingRemainder(dividingBy: number2!);
            result = String(describing: resultCalc);
            userView.text = result;
            return;
        }
        let expression = NSExpression(format:result)
        if let resultCalc = expression.expressionValue(with: nil, context: nil) as? NSNumber {
            result = String(describing: resultCalc);
            userView.text = result;
        } else {
            print("error evaluating expression")
        }
    }
    @IBAction func pressMod(_ sender: Any) {
        if(pressOpt){
            result.remove(at: result.index(before: result.endIndex));
        }else{
            pressOpt = true;
        }
        result = result + "%";
        userView.text = result;
    }
    @IBAction func pressCount(_ sender: Any) {
        let arg = result.characters.split{$0 == " "}.map(String.init);
        var yourArray = [Double]();
        var sum : Double = 0;
        var count : Int = 0;
        for word in arg{
            let number = Double(word);
            if(number != nil){
                yourArray.append(number!);
            }
        }
        for number in yourArray{
            sum += Double(number)
            count += 1
        }
        userView.text = String(describing: count);
    }
    @IBAction func pressAvg(_ sender: Any) {
        let arg = result.characters.split{$0 == " "}.map(String.init);
        var yourArray = [Double]();
        var sum : Double = 0;
        var count : Double = 0;
        for word in arg{
            print(word);
            let number = Double(word);
            if(number != nil){
                yourArray.append(number!);
            }
        }
        for number in yourArray{
            sum += Double(number);
            count += 1.0;
        }
        userView.text = String(describing: Double(sum/count));
    }
    @IBAction func addSpace(_ sender: Any) {
        result = result + " ";
        userView.text = result;
    }
    @IBAction func addDot(_ sender: Any) {
        result = result + ".";
        userView.text = result;
    }
    @IBAction func pressFact(_ sender: Any) {
        let arg = result.characters.split{$0 == " "}.map(String.init);
        var yourArray = [Double]();
        for word in arg{
            let number = Double(word);
            if(number != nil){
                yourArray.append(number!);
            }
        }
        if(yourArray.count > 1){
            userView.text = ("fact operator can only take one number");
        }else{
            userView.text = String(describing: factorial(factorialNumber: UInt64(yourArray[0])));
        }

    }
    @IBOutlet weak var pressEqual: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func factorial(factorialNumber: UInt64) -> UInt64 {
        if factorialNumber == 0 {
            return 1
        } else {
            return factorialNumber * factorial(factorialNumber: factorialNumber - 1)
        }
    }
}

