//
//  ViewController.swift
//  CoolAnimations
//
//  Created by Barış Genç on 25.11.2020.
//  Copyright © 2020 BG. All rights reserved.
//

import UIKit
import ViewAnimator

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let myTable = UITableView()
    let data = ["Animation", "Animation", "Animation", "Animation", "Animation", "Animation", "Animation", "Animation", "Animation", "Animation", "Animation", "Animation", "Animation"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTable)
        myTable.frame = view.bounds
        myTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        myTable.delegate = self
        myTable.dataSource = self
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let animation = AnimationType.rotate(angle: .pi/5)
        UIView.animate(views: myTable.visibleCells, animations: [animation], duration: 1)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.backgroundColor = .link
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .systemRed
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let vc = FirstViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
        else if indexPath.row == 1 {
            let vc = SecondViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }
}

