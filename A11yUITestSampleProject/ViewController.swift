//
//  ViewController.swift
//  A11yUITestSampleProject
//
//  Created by Oswaldo Rubio on 18.02.22.
//

import UIKit

class ViewController: UIViewController {

    lazy var header: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Header"
        view.accessibilityTraits = .header
        view.textColor = .black
        return view
    }()
    
    lazy var subHeader: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Non Accessible Label"
        view.textColor = .black
        view.accessibilityLabel = ""
        view.isAccessibilityElement = false //this should make this element to be ignored from the accessibility test
        return view
    }()
    
    lazy var stack: UIStackView = {
        let view = UIStackView(arrangedSubviews: [header, subHeader, makeSpacerView()])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 20
        return view
    }()
    
    func makeSpacerView() -> UIView {
        let view = UIView(frame: .zero)
        view.setContentHuggingPriority(.defaultLow, for: .vertical)
        view.setContentHuggingPriority(.defaultLow, for: .horizontal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

}

