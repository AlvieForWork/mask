import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let moonImage = UIImage(named: "paint")
        let moonImageView = UIImageView(image: moonImage)
        let videoView = UIView(frame: CGRect(origin: CGPoint(x: 0 , y: 50), size: moonImageView.frame.size))
        view.addSubview(videoView)
        
        let url = URL(string: "https://bit.ly/3yEyJs1")
        let player = AVPlayer(url: url!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = CGRect(origin: .zero, size: moonImageView.frame.size)
        playerLayer.videoGravity = .resizeAspectFill
        videoView.layer.addSublayer(playerLayer)
        videoView.mask = moonImageView
        player.play()
    }
    
    
}
