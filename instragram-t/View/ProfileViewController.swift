import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var btnProfile: UIButton!
    @IBOutlet weak var btnStats: UIButton!
    @IBOutlet weak var btnContact: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageProfile.layer.cornerRadius = 30
        btnProfile.layer.cornerRadius = 13
        btnStats.layer.cornerRadius = 13
        btnContact.layer.cornerRadius = 13
    }
}
