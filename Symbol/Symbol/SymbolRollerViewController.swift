//
//  SymbolRollerViewController.swift
//  Symbol
//
//  Created by 권준희 on 2022/06/28.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols: [String]=["sun.and.horizon.fill","cloud.bolt.rain","moon","wind", "snowflake"]
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var button: UIButton!
    
    func reload(){
        let symbol=symbols.randomElement()!
        ImageView.image=UIImage(systemName: symbol)
        labelView.text=symbol
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO
        // - 심볼에서 하나를 임의로 추출해서
        // - 이미지와 텍스트 설정을 한다.
        // - DRY = Do not repeat yourself
        reload()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    
}
