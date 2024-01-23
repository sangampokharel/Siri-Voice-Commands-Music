import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var audioPlayer: AVPlayer?
    
    @IBAction func handlePlayAudio(_ sender: Any) {
        // Start playing the audio
        audioPlayer?.play()
    }
    @IBAction func handleStop(_ sender: Any) {
        audioPlayer?.pause()
    }
    
    @IBAction func addShortCut(_ sender:Any) {
        //        print("Play Great Music")
        //        let activity = NSUserActivity(activityType: "com.groomfy.order")
        //        activity.title = "Play Great Music"
        //        activity.isEligibleForSearch = true
        //        activity.isEligibleForPrediction = true
        //        self.userActivity = activity
        //        self.userActivity?.becomeCurrent()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.isHidden = false
        playAudioFromAPI()
        activityIndicator.isHidden = true
    }
    
    func playAudioFromAPI() {
        //        guard let apiURL = URL(string: "https://hls-server.vercel.app/m3u8/b69f162ec82bb5aa0af24fdbf77f852c646e2449cc5ef9554bf8eae5fdadf1d2a4ea93fa79729f371497772084cd5e9709affc42e1aeecc20d5ad222aa959e2ffa1398416ca6e3a6759275db98b69dad0ae2a4a06be54e4e20c4ddcb9c75d2222f8639419885d157949bdcc03c3f867088f6af9ecbd4b6424c3b9f53206b4a35670ba465ba1d782e9d9437ea561085d576e24980e40ddc5983924a75cbe0d4411a2a4a6c2a7f98a541d5fa817dca89b4a0c2134e54ed5b79e9d4e83ed931f59c.m3u8") else {
        //            return
        //        }
        
        if let path = Bundle.main.path(forResource: "song1", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            
            let playerItem = AVPlayerItem(url: url)
            audioPlayer = AVPlayer(playerItem: playerItem)
            
            // Set up audio session to allow background playback
            let audioSession = AVAudioSession.sharedInstance()
            do {
                try audioSession.setCategory(AVAudioSession.Category.playback)
                audioPlayer?.play()
            } catch {
                
                print("Error setting up audio session: \(error.localizedDescription)")
            }
            
            
        }
        
    }
    
    
    
    
}


//class ViewController: UIViewController {
//
//    var audioPlayer: AVAudioPlayer?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        playAudio()
//        var audioSession = AVAudioSession.sharedInstance()
//        do{
//            try audioSession.setCategory(AVAudioSession.Category.playback)
//        }catch {
//
//        }
//
//    }
//
//    @IBAction func handlePlayAudio(_ sender: Any) {
//        // Start playing the audio
//        audioPlayer?.play()
//    }
//    @IBAction func handleStop(_ sender: Any) {
//        audioPlayer?.stop()
//    }
//    func playAudio() {
//        // Get the path to the MP3 file in your Xcode project
//        if let path = Bundle.main.path(forResource: "song1", ofType: "mp3") {
//            let url = URL(fileURLWithPath: path)
//
//            do {
//                // Initialize the audio player
//                audioPlayer = try AVAudioPlayer(contentsOf: url)
//
//                // Set up audio session to allow background playback
//                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
//                try AVAudioSession.sharedInstance().setActive(true)
//
//           } catch {
//                print("Error playing audio: \(error.localizedDescription)")
//            }
//        }
//    }
//}
