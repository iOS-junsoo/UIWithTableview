//
//  ViewController.swift
//  UIWithTableview
//
//  Created by 준수김 on 2021/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "foodNameTableViewCell", bundle: nil), forCellReuseIdentifier: "foodNameTableViewCell") //nib 파일 등록
        tableView.register(UINib(nibName: "pickUpTableViewCell", bundle: nil), forCellReuseIdentifier: "pickUpTableViewCell") //nib 파일 등록
        tableView.register(UINib(nibName: "foodDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "foodDetailTableViewCell") //nib 파일 등록
        tableView.register(UINib(nibName: "moreTableViewCell", bundle: nil), forCellReuseIdentifier: "moreTableViewCell") //nib 파일 등록
        tableView.register(UINib(nibName: "totalPriceTableViewCell", bundle: nil), forCellReuseIdentifier: "totalPriceTableViewCell") //nib 파일 등록
        tableView.register(UINib(nibName: "contourTableViewCell", bundle: nil), forCellReuseIdentifier: "contourTableViewCell") //nib 파일 등록

    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //cell의 갯수 설정
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //cell의 데이터 구성
        
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "contourTableViewCell") as! contourTableViewCell
            cell.selectionStyle = .none
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "foodNameTableViewCell") as! foodNameTableViewCell
            cell.selectionStyle = .none
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "pickUpTableViewCell") as! pickUpTableViewCell
            cell.selectionStyle = .none
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "contourTableViewCell", for: indexPath) as! contourTableViewCell
            cell.selectionStyle = .none
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "foodDetailTableViewCell") as! foodDetailTableViewCell
            cell.selectionStyle = .none
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "moreTableViewCell") as! moreTableViewCell
            cell.selectionStyle = .none
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: "contourTableViewCell") as! contourTableViewCell
            cell.selectionStyle = .none
            
            return cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: "totalPriceTableViewCell") as! totalPriceTableViewCell
            cell.selectionStyle = .none
            return cell
        default:
            return UITableViewCell()
        
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { //cell의 높이 설정

        switch indexPath.row {
        case 0:
            return 10
        case 1:
            return 50
        case 2:
            return 125
        case 3:
            return 10
        case 4:
            return 155
        case 5:
            return 50
        case 6:
            return 10
        case 7:
            return 52
        default:
            return 0
        }
    
  
    
    }
}
