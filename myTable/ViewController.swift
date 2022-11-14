//
//  ViewController.swift
//  myTable
//
//  Created by sujin on 2022/11/11.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
//뷰컨트롤러의 부모클래스를 uikit의 상위 클래스를 가져와줍니다, 테이블에 필요한 프로토콜 두가지도 가져옵니다.

    @IBOutlet weak var mytable: UITableView! // 메인 스토리보드의 테이블뷰를 끌어다 가져옵니다
    override func viewDidLoad() { //클래스 기본 로드 설정입니다
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mytable.dataSource = self //마이테이블의 데이터소스를 셀프로 임시지정합니다
        mytable.delegate = self // 마이태이블을 대표하는 놈을 셀프로 임시지정합니다.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    } // 테이블 뷰의 열 갯수를 5개로 지정합니다
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //각 열속의 셀 내용을 지정합니다
        //return UITableViewCell()
        //let cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "myCell")
        //cell.textLabel?.text = "\(indexPath.row)"
        //cell.detailTextLabel?.text = indexPath.description
        //cell.imageView?.image = UIImage(named: "banner.png")!
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell // 자식클래스의 인스턴스를 부모클래스로 끌어와서 쓰기 위해 다운캐스팅합니다
        cell.myLabel.text = indexPath.description //셀 내용 안의 디스크립션을 인덱스패스로 지정해줍니다
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3 // 총 섹션 수를 3개로 지정합니다
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row) // 인덱스패스를 누르면 생길 액션을 지정합니다.
    }
    


}

