//
//  ViewController.swift
//  S&G
//
//  Created by Nathan Dailey on 10/22/22.
//

import UIKit;
import SwiftUI;

class ViewController: UIViewController {
    
    let imgWidth = 75;
    let logoSize = 130;
    var genre = "";
    @IBOutlet weak var textField: UITextField!
    
    
    
    private let logoView: UIImageView = {
        let imageView = UIImageView();
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "S&GClear")
        return imageView
    }()
    
    
    
    func createButtons() {
        let walk = UIButton(frame: CGRect(x: Int(view.center.x - CGFloat(imgWidth * 2)), y: Int(Double(view.center.y) * 1.6) , width: imgWidth * 4, height: imgWidth))
        walk.configuration = createButton(main: "Chillin'",sub: "Just Walkin' Slow")
        view.addSubview(walk)
        walk.addTarget(self, action: #selector(didWalk), for: .touchUpInside)
        
        let jog = UIButton(frame: CGRect(x: Int(view.center.x - CGFloat(imgWidth * 2)), y: Int(Double(view.center.y) * 1.35) , width: imgWidth * 4, height: imgWidth))
        jog.configuration = createButton(main: "Hustlin'",sub: "Kinda Movin' Now")
        view.addSubview(jog)
        jog.addTarget(self, action: #selector(didJog), for: .touchUpInside)
        
        let run = UIButton(frame: CGRect(x: Int(view.center.x - CGFloat(imgWidth * 2)), y: Int(Double(view.center.y) * 1.1) , width: imgWidth * 4, height: imgWidth))
        run.configuration = createButton(main: "Zoomin'",sub: "Now We're Runnin'")
        view.addSubview(run)
        run.addTarget(self, action: #selector(didRun), for: .touchUpInside)
    }
    
    func createButton(main: String, sub: String) -> UIButton.Configuration {
        var mainTitle = AttributedString(main)
        mainTitle.foregroundColor = UIColor(named: "dark")
        mainTitle.font = UIFont.systemFont(ofSize: 24)
        var subTitle = AttributedString(sub)
        subTitle.foregroundColor = UIColor(named: "dark")
        subTitle.font = UIFont.systemFont(ofSize: 16)
        var config: UIButton.Configuration = .filled()
        config.baseBackgroundColor = UIColor(named: "Redy")
        config.attributedTitle = mainTitle
        config.attributedSubtitle = subTitle
        config.titleAlignment = .center
        config.cornerStyle = .medium
        return config
    }
    
    func createLabel() {
        let enter = UILabel(frame: CGRect(x: Int(view.center.x - CGFloat(imgWidth * 2)), y: Int(Double(view.center.y) * 0.55) , width: imgWidth * 4, height: imgWidth))
        var mainTitle = AttributedString("Whatcha' Wanna' Listen To?")
        mainTitle.foregroundColor = UIColor(named: "dark")
        mainTitle.font = UIFont.systemFont(ofSize: 24)
        enter.attributedText = NSAttributedString(mainTitle)
        view.addSubview(enter)
    }
    
    func createLabelthree() {
        let enter = UILabel(frame: CGRect(x: Int(view.center.x - CGFloat(Float(imgWidth) * 1.6)), y: Int(Double(view.center.y) * 0.62) , width: imgWidth * 4, height: imgWidth))
        var mainTitle = AttributedString("Rock, Jazz, Hip-Hop, Pop, Country")
        mainTitle.foregroundColor = UIColor(named: "dark")
        mainTitle.font = UIFont.systemFont(ofSize: 14)
        enter.attributedText = NSAttributedString(mainTitle)
        view.addSubview(enter)
    }
    
    func createLabelTwo() {
        let enter = UILabel(frame: CGRect(x: Int(view.center.x - CGFloat(Float(imgWidth) * 1.5)), y: Int(Double(view.center.y) * 0.9) , width: imgWidth * 4, height: imgWidth))
        var mainTitle = AttributedString("Now Pick Ya' Speed")
        mainTitle.foregroundColor = UIColor(named: "dark")
        mainTitle.font = UIFont.systemFont(ofSize: 24)
        enter.attributedText = NSAttributedString(mainTitle)
        view.addSubview(enter)
    }
    
    func createTextField() -> UITextField{
        let txt = UITextField()
        txt.frame = CGRect(x: Int(view.center.x - CGFloat(imgWidth * 2)), y: Int(Double(view.center.y) * 0.75) , width: imgWidth * 4, height: Int(Double(imgWidth) / 1.5))
        txt.borderStyle = .roundedRect
        var mainTitle = AttributedString("Pick Ya' Genre")
        mainTitle.foregroundColor = UIColor(named: "dark")
        txt.attributedText = NSAttributedString(mainTitle)
        txt.backgroundColor = UIColor(named: "Base1")
        txt.clearsOnBeginEditing = true
        view.addSubview(txt)
        return txt
    }
    
    @objc func didWalk() {
        genre = textField.text!
        if (genre.lowercased() == "rock") {
            if let url = URL(string: "https://open.spotify.com/playlist/0qE0ngfvENMSF6DsLiikbQ?si=ace0744193124f86") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "jazz"){
            if let url = URL(string: "https://open.spotify.com/playlist/226US44hgMDEpJN8g3ToRi?si=de5bc23c715e4b88") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "hip-hop"){
            if let url = URL(string: "https://open.spotify.com/playlist/4hyIPKytV7JATnie1xX4H9?si=876fc4ef06964171") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "pop"){
            if let url = URL(string: "https://open.spotify.com/playlist/0XpUfGGnrdYXrc6G1GlUYw?si=f2117a7c12b64619") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "country"){
            if let url = URL(string: "https://open.spotify.com/playlist/1W3aB7sZmAwEIwGbdm9pUa?si=d03f833aeb1a49bd") {
                UIApplication.shared.open(url)
            }
        } else {
            textField.text = "Input Valid Genre!"
        }
    }
    
    @objc func didJog() {
        genre = textField.text!
        if (genre.lowercased() == "rock") {
            if let url = URL(string: "https://open.spotify.com/playlist/41GxMKoaPEtWpJrY8BwnJL?si=20eea58335cb4959") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "jazz"){
            if let url = URL(string: "https://open.spotify.com/playlist/4v4PhwKRM0TzWGWTx9gMJA?si=9ff0c76800454abe") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "hip-hop"){
            if let url = URL(string: "https://open.spotify.com/playlist/4ps0wU5OkPdJqNGlqmp7iF?si=99142427e94046bd") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "pop"){
            if let url = URL(string: "https://open.spotify.com/playlist/3Gi1ZG7OjjaLtshCZdGMhV?si=49471f4fc073480a") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "country"){
            if let url = URL(string: "https://open.spotify.com/playlist/2nlQm6Zl2zA0a39NTYDK9R?si=48b5e03bc6e54e49") {
                UIApplication.shared.open(url)
            }
        } else {
            textField.text = "Input Valid Genre!"
        }
    }
    
    @objc func didRun() {
        genre = textField.text!
        if (genre.lowercased() == "rock") {
            if let url = URL(string: "https://open.spotify.com/playlist/7JEsXWl7PDT2xIQKG2NULy?si=d2381f5f74d74d26") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "jazz"){
            if let url = URL(string: "https://open.spotify.com/playlist/38CwNWO0uaP7hhYW4Hz3Xw?si=504648b46fcd4c65") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "hip-hop"){
            if let url = URL(string: "https://open.spotify.com/playlist/16u9WCQizWXTrWJZc1Qegy?si=06c6cd02d004458d") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "pop"){
            if let url = URL(string: "https://open.spotify.com/playlist/1zeSqRmwsaPyvaRYoNIniU?si=ef591dcb8c3440a3") {
                UIApplication.shared.open(url)
            }
        } else if (genre.lowercased() == "country"){
            if let url = URL(string: "https://open.spotify.com/playlist/2ChHHomVuyUOdGtkgW4boy?si=7151333584694ac9") {
                UIApplication.shared.open(url)
            }
        } else {
            textField.text = "Input Valid Genre!"
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "AccentColor")
        view.addSubview(logoView)
        logoView.frame = CGRect(x: Int(view.center.x - CGFloat(logoSize/2)), y: Int(Float(view.center.y)/4.2), width: logoSize, height: logoSize)
        createButtons()
        createLabel()
        createLabelTwo()
        createLabelthree()
        textField = createTextField()
    }
}

