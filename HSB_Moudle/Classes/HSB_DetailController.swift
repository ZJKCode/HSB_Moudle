//
//  B_DetailController.swift
//  B_Moudle
//
//  Created by 发抖喵 on 2022/2/4.
//

import Foundation

//MARK: - 进入该页面不需要传参 演示
public class HSB_DetailController: UIViewController {
    
    private lazy var titleLabel = UILabel()
    private lazy var backButton = UIButton(type: .system)
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "B_DetailController"
        self.view.backgroundColor = .purple
        
        setupUI()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}

//MARK: - UI
extension HSB_DetailController {
    private func setupUI() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(backButton)
        
        titleLabel.text = "B_DetailController"
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.top.equalToSuperview().offset(100)
        }
        
        backButton.setTitle("点击返回上一个页面", for: .normal)
        backButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        backButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
        }
    }
}

//MARK: - Action
extension HSB_DetailController {
    /**
     点击跳转按钮
     */
    @objc private func clickButton() {
        self.dismissRouterController(animated: true)
    }
}

