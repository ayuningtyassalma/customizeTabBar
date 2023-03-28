//
//  ProductListTableViewCell.swift
//  customizeTabBar
//
//  Created by Phincon on 28/03/23.
//

import UIKit

class ProductListTableViewCell: UITableViewCell {
static let identifier = "ProductListTableViewCell"
    
    private lazy var container : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.layer.cornerRadius = 20
        containerView.clipsToBounds = true
        return containerView
    }()
    
    private lazy var stackView : UIStackView = {
        let stackVw = UIStackView()
        stackVw.translatesAutoresizingMaskIntoConstraints = false
        stackVw.axis = .vertical
        stackVw.spacing = 4
        return stackVw
    }()
    
    private lazy var productImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var productTittle : UILabel = {
        let title = UILabel()
        title.numberOfLines = 0
        title.font = .systemFont(ofSize: 18, weight: .bold)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private lazy var productPrice : UILabel = {
        let price = UILabel()
        price.translatesAutoresizingMaskIntoConstraints = false
        price.font = .systemFont(ofSize: 14, weight: .light)
        price.textColor = .red
        return price
        
    }()
    
    private lazy var loveIcon : UIButton = {
        let icon = UIButton()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    
    
    func setUpTabelCell(){
        productTittle.text = "Maybeline Lipcream no 9."
        productPrice.text = "IDR \(100)K"
        productImage.image = UIImage(named: "lipstick")
        container.layer.cornerRadius = 20
        container.clipsToBounds = true
        loveIcon.setImage(UIImage(systemName: "heart.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 20)), for: .normal)
        stackView.layer.borderColor = UIColor.red.cgColor
        stackView.layer.borderWidth = 1
        
        self.contentView.addSubview(container)
        container.addSubview(stackView)
        container.addSubview(productImage)
        container.addSubview(loveIcon)
        stackView.addArrangedSubview(productTittle)
        stackView.addArrangedSubview(productPrice)
     
        
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            container.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10),
            container.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            container.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10),
            
            stackView.topAnchor.constraint(equalTo: container.topAnchor, constant: 8),
            stackView.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -8),
            stackView.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 7),
            stackView.trailingAnchor.constraint(equalTo: loveIcon.leadingAnchor, constant: -7),
            
            productImage.topAnchor.constraint(equalTo: container.topAnchor),
            productImage.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 5),
            productImage.heightAnchor.constraint(equalToConstant: 50),
            productImage.widthAnchor.constraint(equalToConstant: 50),
            
            loveIcon.heightAnchor.constraint(equalToConstant: 20),
            loveIcon.widthAnchor.constraint(equalToConstant: 20),
            loveIcon.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -5),
            loveIcon.centerYAnchor.constraint(equalTo: container.centerYAnchor)
            
        ])
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
