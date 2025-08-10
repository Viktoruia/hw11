//
//  ViewController.swift
//  hw10
//
//  Created by Виктория  on 10.08.25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        calculate()
        
    }
    
    private func calculate() {
        let numbersString = UILabel()
        numbersString.text = "0"
        numbersString.textColor = .white
        numbersString.font = UIFont.systemFont(ofSize: 85)
        numbersString.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(numbersString)
        
        NSLayoutConstraint.activate([
            numbersString.topAnchor.constraint(equalTo: view.topAnchor, constant: 270),
            numbersString.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        let numberStack = UIStackView()
        numberStack.axis = .vertical
        numberStack.spacing = 20
        numberStack.distribution = .fillEqually
        numberStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(numberStack)
        
        NSLayoutConstraint.activate([
            numberStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            numberStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            numberStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            numberStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
        
        
        let firstString = UIStackView()
        firstString.axis = .horizontal
        firstString.spacing = 20
        firstString.distribution = .fillEqually
        
        let acButton = UIButton()
        acButton.setTitle("AC", for: .normal)
        acButton.setTitleColor(.black, for: .normal)
        acButton.backgroundColor = .lightGray
        acButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        acButton.layer.cornerRadius = 38
        
        let plusMinusButton = UIButton()
        plusMinusButton.setTitle("+/-", for: .normal)
        plusMinusButton.setTitleColor(.black, for: .normal)
        plusMinusButton.backgroundColor = .lightGray
        plusMinusButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        plusMinusButton.layer.cornerRadius = 38
        
        let percentButton = UIButton()
        percentButton.setTitle("%", for: .normal)
        percentButton.setTitleColor(.black, for: .normal)
        percentButton.backgroundColor = .lightGray
        percentButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        percentButton.layer.cornerRadius = 38
        
        let divicionButton = UIButton()
        divicionButton.setTitle("÷", for: .normal)
        divicionButton.setTitleColor(.white, for: .normal)
        divicionButton.backgroundColor = .systemOrange
        divicionButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        divicionButton.layer.cornerRadius = 38
        
        for element in [acButton, plusMinusButton, percentButton, divicionButton] {
            firstString.addArrangedSubview(element)
        }
        
        
        let secondString = UIStackView()
        secondString.axis = .horizontal
        secondString.spacing = 20
        secondString.distribution = .fillEqually
        
        let sevenButton = UIButton()
        sevenButton.setTitle("7", for: .normal)
        sevenButton.setTitleColor(.white, for: .normal)
        sevenButton.backgroundColor = .darkGray
        sevenButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        sevenButton.layer.cornerRadius = 38
        
        let eightButton = UIButton()
        eightButton.setTitle("8", for: .normal)
        eightButton.setTitleColor(.white, for: .normal)
        eightButton.backgroundColor = .darkGray
        eightButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        eightButton.layer.cornerRadius = 38
        
        let nineButton = UIButton()
        nineButton.setTitle("9", for: .normal)
        nineButton.setTitleColor(.white, for: .normal)
        nineButton.backgroundColor = .darkGray
        nineButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        nineButton.layer.cornerRadius = 38
        
        let multiplicatiButton = UIButton()
        multiplicatiButton.setTitle("×", for: .normal)
        multiplicatiButton.setTitleColor(.white, for: .normal)
        multiplicatiButton.backgroundColor = .systemOrange
        multiplicatiButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        multiplicatiButton.layer.cornerRadius = 38
        
        for element in [sevenButton, eightButton, nineButton, multiplicatiButton] {
            secondString.addArrangedSubview(element)
        }
        
        
        let thirdString = UIStackView()
        thirdString.axis = .horizontal
        thirdString.spacing = 20
        thirdString.distribution = .fillEqually
        
        let fourButton = UIButton()
        fourButton.setTitle("4", for: .normal)
        fourButton.setTitleColor(.white, for: .normal)
        fourButton.backgroundColor = .darkGray
        fourButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        fourButton.layer.cornerRadius = 38
        
        let fiveButton = UIButton()
        fiveButton.setTitle("5", for: .normal)
        fiveButton.setTitleColor(.white, for: .normal)
        fiveButton.backgroundColor = .darkGray
        fiveButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        fiveButton.layer.cornerRadius = 38
        
        let sixButton = UIButton()
        sixButton.setTitle("6", for: .normal)
        sixButton.setTitleColor(.white, for: .normal)
        sixButton.backgroundColor = .darkGray
        sixButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        sixButton.layer.cornerRadius = 38
        
        let minusButton = UIButton()
        minusButton.setTitle("-", for: .normal)
        minusButton.setTitleColor(.white, for: .normal)
        minusButton.backgroundColor = .systemOrange
        minusButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        minusButton.layer.cornerRadius = 38
        
        for element in [fourButton, fiveButton, sixButton, minusButton] {
            thirdString.addArrangedSubview(element)
        }
        
        
        let fourthString = UIStackView()
        fourthString.axis = .horizontal
        fourthString.spacing = 20
        fourthString.distribution = .fillEqually
        
        let oneButton = UIButton()
        oneButton.setTitle("1", for: .normal)
        oneButton.setTitleColor(.white, for: .normal)
        oneButton.backgroundColor = .darkGray
        oneButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        oneButton.layer.cornerRadius = 38
        
        let twoButton = UIButton()
        twoButton.setTitle("2", for: .normal)
        twoButton.setTitleColor(.white, for: .normal)
        twoButton.backgroundColor = .darkGray
        twoButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        twoButton.layer.cornerRadius = 38
        
        let threeButton = UIButton()
        threeButton.setTitle("3", for: .normal)
        threeButton.setTitleColor(.white, for: .normal)
        threeButton.backgroundColor = .darkGray
        threeButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        threeButton.layer.cornerRadius = 38
        
        let plusButton = UIButton()
        plusButton.setTitle("+", for: .normal)
        plusButton.setTitleColor(.white, for: .normal)
        plusButton.backgroundColor = .systemOrange
        plusButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        plusButton.layer.cornerRadius = 38
        
        for element in [oneButton, twoButton, threeButton, plusButton] {
            fourthString.addArrangedSubview(element)
        }
        
        
        let fifthString = UIStackView()
        fifthString.axis = .horizontal
        fifthString.spacing = 20
        fifthString.distribution = .fillEqually
        
        let zeroButtonStack = UIStackView()
        zeroButtonStack.axis = .horizontal
        zeroButtonStack.spacing = 20
        zeroButtonStack.distribution = .fillEqually
        
        let zeroButton = UIButton()
        zeroButton.setTitle("0", for: .normal)
        zeroButton.setTitleColor(.white, for: .normal)
        zeroButton.contentHorizontalAlignment = .left
        zeroButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 0)
        zeroButton.backgroundColor = .darkGray
        zeroButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        zeroButton.layer.cornerRadius = 38
        
        zeroButtonStack.addArrangedSubview(zeroButton)
    
        
        let commaEqualButtonStack = UIStackView()
        commaEqualButtonStack.axis = .horizontal
        commaEqualButtonStack.spacing = 20
        commaEqualButtonStack.distribution = .fillEqually
        
        let commaButton = UIButton()
        commaButton.setTitle(",", for: .normal)
        commaButton.setTitleColor(.white, for: .normal)
        commaButton.backgroundColor = .darkGray
        commaButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        commaButton.layer.cornerRadius = 38
        
        let equalsButton = UIButton()
        equalsButton.setTitle("=", for: .normal)
        equalsButton.setTitleColor(.white, for: .normal)
        equalsButton.backgroundColor = .systemOrange
        equalsButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        equalsButton.layer.cornerRadius = 38
        
        for element in [commaButton, equalsButton] {
            commaEqualButtonStack.addArrangedSubview(element)
        }
        
        for element in [zeroButtonStack, commaEqualButtonStack] {
            fifthString.addArrangedSubview(element)
        }
        
        
        for element in [firstString, secondString, thirdString, fourthString, fifthString] {
            numberStack.addArrangedSubview(element)
        }
        
        
    }


}

