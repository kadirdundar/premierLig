//
//  ChantsViewController.swift
//  premierLig
//
//  Created by Kadir Dündar on 25.03.2023.
//

import UIKit

class ChantsViewController: UIViewController {
    // MARK: - UI
    private lazy var tableVw: UITableView = {
    let tv = UITableView()
    tv.translatesAutoresizingMaskIntoConstraints = false
    tv.backgroundColor = .clear
    tv.rowHeight = UITableView.automaticDimension
    tv.estimatedRowHeight = 44
    tv.separatorStyle = .none
    tv.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tv.register(TeamTableViewCell.self, forCellReuseIdentifier: TeamTableViewCell.cellId)
    return tv
    }()
    private lazy var teamsViewMOdel = TeamsViewModel()
    //MARK: - Lifecycle
    
    override func loadView(){
        super.loadView()
        setup()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    

}
extension ChantsViewController{
    func setup(){
        self.navigationController?.navigationBar.topItem?.title = "Premier Lig"
        self.navigationController?.navigationBar.backgroundColor = .white
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        self.view.addSubview(tableVw)
        tableVw.dataSource = self
        NSLayoutConstraint.activate([
            tableVw.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            tableVw.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableVw.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            tableVw.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}

extension ChantsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamsViewMOdel.teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let team = teamsViewMOdel.teams[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: TeamTableViewCell.cellId, for: indexPath) as! TeamTableViewCell
        cell.configure(team)
        return cell
        
    }
    
    
}
