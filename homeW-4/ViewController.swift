//
//  ViewController.swift
//  homeW-4
//
//  Created by Nurjamal Mirbaizaeva on 17/3/23.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    private var productList: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        initData()
    }
    private func initData(){
        productList = [Product(id: 0, type: "Furniture", count: "785 items", image: "Image1", details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair", roomType: "Office, Living Room", color: "yellow", material: "Textile, Velvet, Cotton", dimensions: "25.6 * 31.5 * 37.4 inches", weight:  "20.3 Pounds", star: 5, price: "230 $")), Product(id: 0, type: "KitchenWare", count: "645 items", image: "Image2", details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair", roomType: "Office, Living Room", color: "yellow", material: "Textile, Velvet, Cotton", dimensions: "25.6 * 31.5 * 37.4 inches", weight:  "20.3 Pounds", star: 5, price: "230 $")), Product(id: 0, type: "Reading Table", count: "Inventory", image: "Image3", details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair", roomType: "Office, Living Room", color: "yellow", material: "Textile, Velvet, Cotton", dimensions: "25.6 * 31.5 * 37.4 inches", weight:  "20.3 Pounds", star: 5, price: "230 $"))]
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate{

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            productList.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
            cell.configure(image: productList[indexPath.row].image, names: productList[indexPath.row].type, item: productList[indexPath.row].count)
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let vc = DetailViewController()
        vc.name2 = productList[indexPath.row].details.name
        vc.price2 = productList[indexPath.row].details.price
        vc.room = productList[indexPath.row].details.roomType
        vc.colors = productList[indexPath.row].details.color
        vc.materials = productList[indexPath.row].details.material
        vc.dimen = productList[indexPath.row].details.dimensions
        vc.weight = productList[indexPath.row].details.weight

        self.navigationController?.pushViewController(vc, animated: true)
    }
}

struct Product {
    var id: Int
    var type: String
    var count: String
    var image: String
    var details: ProductDetails
}
struct ProductDetails {
    var name: String
    var roomType: String
    var color: String
    var material: String
    var dimensions: String
    var weight: String
    var star: Int
    var price: String
}


