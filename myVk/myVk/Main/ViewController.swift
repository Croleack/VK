//
//  ViewController.swift
//  myVk
//
//  Created by Enzhe Gaysina on 06.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
   //как только загрузится наш контроллер, будет осуществлен переход, и пользователь его даже не заметит
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //пишем код для перехода в таббар
        let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "Tabbar")
        //объявляем переход на ВьюКонтроллер
        self.navigationController?.pushViewController(viewController, animated: false)
    }


}

