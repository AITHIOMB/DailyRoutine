//
//  ViewController.swift
//  DailyRoutine
//
//  Created by Aissatou Thiombane on 4/23/24.
//

import UIKit

class RoutinesViewController: UIViewController, , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
        
        // Array to store routines
        var routines = [Routine]() 

        override func viewDidLoad() {
            super.viewDidLoad()
            
            collectionView.delegate = self
            collectionView.dataSource = self
            
            collectionView.register(RoutineCollectionViewCell.self, forCellWithReuseIdentifier: "RoutineCell")
            
            // Set up the plus button in the navigation bar
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
            
            loadRoutines()
        }

        func loadRoutines() {
           
        }

        // MARK: UICollectionViewDataSource

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return routines.count
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoutineCell", for: indexPath) as! RoutineCollectionViewCell
            let routine = routines[indexPath.item]
            cell.titleLabel.text = routine.title
            
            return cell
        }

        // MARK: UICollectionViewDelegate

        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
        }

        // MARK: UICollectionViewDelegateFlowLayout

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            let width = (collectionView.bounds.width / 2) - 16
            return CGSize(width: width, height: width)
        }

        // MARK: - Navigation Bar Button Action

        @objc func addButtonTapped() {
            
        }
    }


