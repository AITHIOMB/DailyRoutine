//
//  ViewController.swift
//  DailyRoutine
//
//  Created by Aissatou Thiombane on 4/23/24.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var routineView: UICollectionView!
    @IBOutlet weak var addButton: UIButton!
    var routines = [Routine]() // This will hold your routines

        override func viewDidLoad() {
            super.viewDidLoad()
            routineCollectionView.delegate = self
            routineCollectionView.dataSource = self
            // Register the custom cell with an identifier, replace `RoutineCollectionViewCell` with your actual cell class name and `identifier` with your cell identifier
            routineCollectionView.register(RoutineCollectionViewCell.self, forCellWithReuseIdentifier: "RoutineCellIdentifier")
            
            // Do any additional setup like setting up the addButton style if needed
            addButton.layer.cornerRadius = addButton.frame.height / 2 // Make button circular if it's a square size
            loadRoutines() // Load routines from your data manager or storage
        }

        func loadRoutines() {
            // Fetch routines from your data manager or mock data for testing
            // routines = DataManager.shared.loadRoutines() for example
        }

        // MARK: - UICollectionViewDataSource

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return routines.count // Number of routines
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoutineCellIdentifier", for: indexPath) as! RoutineCollectionViewCell
            let routine = routines[indexPath.item]
            // Configure the cell with the routine
            cell.configure(with: routine)
            return cell
        }

        // MARK: - UICollectionViewDelegate

        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            // Handle the selection of a routine
            let routine = routines[indexPath.item]
            // For example, navigate to a detail view controller for the selected routine
        }

        // MARK: - Add Button Action

        @IBAction func addButtonTapped(_ sender: UIButton) {
            // Handle the add button tap
            // Navigate to a view controller where a new routine can be added
            // For example:
            // let addEditRoutineVC = ... // Instantiate the Add/Edit view controller
            // self.navigationController?.pushViewController(addEditRoutineVC, animated: true)
        }
    }



}

