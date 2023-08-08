//
//  ServicesViewController.swift
//  myVk
//
//  Created by Enzhe Gaysina on 06.08.2023.
//

import UIKit

//необходимо подписаться еще на два протокола, чтобы работать с таблицами
class ServicesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    let cells = ["Друзья", "Сообщества", "Музыка", "Маркет", "Игры", "Стикеры", "Шаги", "Знакомства"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //этот метод показывает количество ячеек в нашей таблице
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //вернем количество наших ячеек
        return cells.count
        
    }
    //метод показывает какя где строка будет расположена
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ServicesTableViewCell
        cell.menuName.text = cells[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return HeaderView.instantiate()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 104
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) ->UIView? {
        return UIView()
    }
    
}
