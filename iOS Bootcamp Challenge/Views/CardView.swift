//
//  CardView.swift
//  iOS Bootcamp Challenge
//
//  Created by Marlon David Ruiz Arroyave on 28/09/21.
//

import UIKit

class CardView: UIView {

    private let margin: CGFloat = 30
    var card: Card?

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 27)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    required init(card: Card) {
        self.card = card
        super.init(frame: .zero)
        setup()
        setupUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
        setupUI()
    }

    private func setup() {
        guard let card = card else { return }

        card.items.forEach { _ in }

        titleLabel.text = card.title
        let items = card.items.reduce(into: [String: String]()) {
            $0[$1.title] = $1.description
        }
        abilitiesValueLabel.text = items["Abilities"]?.capitalized
        typesValueLabel.text = items["Types"]?.capitalized
        nameValueLabel.text = items["Name"]?.capitalized
        baseExperienceValueLabel.text = items["Base Experience"]
        backgroundColor = .white
        layer.cornerRadius = 20
    }
    
    let nameKeyLabel: UILabel = {
        
        let textView = UILabel()
        let text = "Name:           "
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        
        textView.text = text
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let nameValueLabel: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let abilitiesKeyLabel: UILabel = {
        
        let textView = UILabel()
        let text = "Abilities:      "
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        
        textView.text = text
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let abilitiesValueLabel: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let typesKeyLabel: UILabel = {
        
        let textView = UILabel()
        let text = "Types:          "
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        
        textView.text = text
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let typesValueLabel: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let baseExperienceKeyLabel: UILabel = {
        
        let textView = UILabel()
        let text = "Experience: "
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        
        textView.text = text
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let baseExperienceValueLabel: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()


    private func setupUI() {
        addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: margin * 2).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margin).isActive = true
        titleLabel.widthAnchor.constraint(lessThanOrEqualTo: self.widthAnchor, multiplier: 0.70).isActive = true
        
        addSubview(nameKeyLabel)
        nameKeyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: margin).isActive = true
        nameKeyLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margin).isActive = true
        
        addSubview(nameValueLabel)
        nameValueLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: margin).isActive = true
        nameValueLabel.leftAnchor.constraint(equalTo: nameKeyLabel.rightAnchor).isActive = true
        nameValueLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: margin).isActive = true
        
        addSubview(abilitiesKeyLabel)
        abilitiesKeyLabel.topAnchor.constraint(equalTo: nameValueLabel.bottomAnchor, constant: margin).isActive = true
        abilitiesKeyLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margin).isActive = true
        
        addSubview(abilitiesValueLabel)
        abilitiesValueLabel.topAnchor.constraint(equalTo: nameValueLabel.bottomAnchor, constant: margin).isActive = true
        abilitiesValueLabel.leftAnchor.constraint(equalTo: abilitiesKeyLabel.rightAnchor).isActive = true
        abilitiesValueLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: margin).isActive = true
        
        
        addSubview(typesKeyLabel)
        typesKeyLabel.topAnchor.constraint(equalTo: abilitiesValueLabel.bottomAnchor, constant: margin).isActive = true
        typesKeyLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margin).isActive = true
        
        addSubview(typesValueLabel)
        typesValueLabel.topAnchor.constraint(equalTo: abilitiesValueLabel.bottomAnchor, constant: margin).isActive = true
        typesValueLabel.leftAnchor.constraint(equalTo: typesKeyLabel.rightAnchor).isActive = true
        typesValueLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: margin).isActive = true
        
        addSubview(baseExperienceKeyLabel)
        baseExperienceKeyLabel.topAnchor.constraint(equalTo: typesValueLabel.bottomAnchor, constant: margin).isActive = true
        baseExperienceKeyLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margin).isActive = true
        
        addSubview(baseExperienceValueLabel)
        baseExperienceValueLabel.topAnchor.constraint(equalTo: typesValueLabel.bottomAnchor, constant: margin).isActive = true
        baseExperienceValueLabel.leftAnchor.constraint(equalTo: baseExperienceKeyLabel.rightAnchor).isActive = true
        baseExperienceValueLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: margin).isActive = true
        
    }

}
