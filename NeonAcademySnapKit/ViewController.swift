//
//  ViewController.swift
//  NeonAcademySnapKit
//
//  Created by Kerem Caan on 28.07.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let label : UILabel = UILabel()
    let box : UIView = UIView()
    let button : UIButton = UIButton()
    let imageView : UIImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        
        view.addSubview(box)
        box.backgroundColor = .white
        box.translatesAutoresizingMaskIntoConstraints = false
        box.snp.makeConstraints { make in
            make.width.equalTo(view)
            make.height.equalTo(view)
            make.center.equalTo(view.snp.center)
        }
        
        label.text = "FutureTech"
        view.addSubview(label)
        label.font = .systemFont(ofSize: 18)
        label.textColor = .black
        label.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(50)
            make.left.equalToSuperview().offset(160)
            make.right.equalToSuperview().offset(10)
            make.height.equalToSuperview().multipliedBy(0.07)
        }
        
        button.setTitle("Set", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(labelChange), for: .touchUpInside)
        button.snp.makeConstraints{(make) in
            make.top.equalTo(imageView).offset(50)
            make.left.equalToSuperview()
            make.bottom.equalToSuperview().offset(80)
            make.right.equalToSuperview().offset(160)
        }
        
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "heart")
        imageView.clipsToBounds = true
        imageView.snp.makeConstraints{(make) in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(60)
            make.leading.equalToSuperview().offset(30)
            make.width.height.equalTo(130)
            
            
        }
        
    }

    @objc func labelChange() {
        label.text = "butona tıklandı."
    }


}

