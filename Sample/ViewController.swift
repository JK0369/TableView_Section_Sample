//
//  ViewController.swift
//  Sample
//
//  Created by 김종권 on 2021/06/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var sectionHeader = ["1 section header", "2 section header"]
    var sectionFooter = ["1 section footer", "2 section footer"]
    var cellDataSource = ["1 cell", "2 cell", "3 cell"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    // MARK: - Section

    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionHeader.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeader[section]
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return sectionFooter[section]
    }

    // MARK: - Row Cell

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellDataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = cellDataSource[indexPath.row]
        return cell
    }
}
