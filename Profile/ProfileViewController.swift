//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Irina Vasileva on 15.12.2024.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    private var profileImageView: UIImageView?
    private var exitButton: UIButton?
    private var fullNameTextLabel: UILabel?
    private var profileLoginTextLabel: UILabel?
    private var profileStatusTextLabel: UILabel?
    private var favoritesTextLabel: UILabel?
    private var noFavoritesPhotoPlaceHolder: UIImageView?
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setProfileScreen()
    }
    
   
    private func setProfileScreen() {
        view.backgroundColor = .ypBlack
        setProfileImage()
        setExitButton()
        setFullNameTextLabel()
        setProfileLoginTextLabel()
        setProfileStatusTextLabel()
    }
    
    @objc private func setProfileImage() {
        let profileImageView = UIImageView()
        let profileImage = UIImage(named: "avatar")
        profileImageView.image = profileImage
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        profileImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        profileImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 32).isActive = true
        self.profileImageView = profileImageView
    }
    
    private func setExitButton() {
        
        guard let exitImage = UIImage(named: "logout_button"),
              let profileImageView = self.profileImageView else {return}
        
        let exitButton = UIButton.systemButton(
            with: exitImage,
            target: self,
            action: #selector(Self.didTapExitButton)
        )
        exitButton.tintColor = UIColor(named: "YP Red (iOS)")
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(exitButton)
        
        exitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        exitButton.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor).isActive = true
        
        self.exitButton = exitButton
    }
    
    private func setFullNameTextLabel() {
        guard let profileImageView = self.profileImageView else { return }
        let fullNameTextLabel = UILabel()
        view.addSubview(fullNameTextLabel)
        fullNameTextLabel.translatesAutoresizingMaskIntoConstraints = false
        fullNameTextLabel.text = "Екатерина Новикова"
        fullNameTextLabel.textColor = UIColor(named: "YP White (iOS)")
        fullNameTextLabel.font = .systemFont(ofSize: 23.0, weight: .medium)
        
        fullNameTextLabel.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor).isActive = true
        fullNameTextLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8).isActive = true
        self.fullNameTextLabel = fullNameTextLabel
    }
    
    private func setProfileLoginTextLabel() {
        guard let fullNameTextLabel = self.fullNameTextLabel else { return }
        let profileLoginTextLabel = UILabel()
        view.addSubview(profileLoginTextLabel)
        profileLoginTextLabel.translatesAutoresizingMaskIntoConstraints = false
        profileLoginTextLabel.text = "@ekaterina_nov"
        profileLoginTextLabel.textColor = UIColor(named: "YP Gray (iOS)")
        profileLoginTextLabel.font = .systemFont(ofSize: 13.0, weight: .medium)
        
        profileLoginTextLabel.leadingAnchor.constraint(equalTo: fullNameTextLabel.leadingAnchor).isActive = true
        profileLoginTextLabel.topAnchor.constraint(equalTo: fullNameTextLabel.bottomAnchor, constant: 8).isActive = true
        self.profileLoginTextLabel = profileLoginTextLabel
    }
    
    private func setProfileStatusTextLabel() {
        guard let profileLoginTextLabel = self.profileLoginTextLabel else { return }
        let profileStatusTextLabel = UILabel()
        view.addSubview(profileStatusTextLabel)
        profileStatusTextLabel.translatesAutoresizingMaskIntoConstraints = false
        profileStatusTextLabel.text = "Hello, world!"
        profileStatusTextLabel.textColor = UIColor(named: "YP White (iOS)")
        profileStatusTextLabel.font = .systemFont(ofSize: 13.0, weight: .medium)
        
        profileStatusTextLabel.leadingAnchor.constraint(equalTo: profileLoginTextLabel.leadingAnchor).isActive = true
        profileStatusTextLabel.topAnchor.constraint(equalTo: profileLoginTextLabel.bottomAnchor, constant: 8).isActive = true
        self.profileStatusTextLabel = profileStatusTextLabel
    }
    
    
    @objc private func didTapExitButton() {
    }
}

    
