//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

UINavigationBar.appearance().tintColor = .white
UINavigationBar.appearance().barTintColor = .red
UINavigationBar.appearance().barStyle = UIBarStyle.blackTranslucent
UINavigationBar.appearance().isTranslucent = false

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let button = UIButton()
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 20)
        button.setTitle("open", for: .normal)
        button.addTarget(self, action: #selector(open), for: .touchUpInside)
        button.setTitleColor(.red, for: .normal)

        view.addSubview(button)
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "X"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "text", style: .plain, target: nil, action: nil)
    }

    @objc func open() {
        // White navigation bar with white buttons.
        let documentsController = UIDocumentPickerViewController(documentTypes: ["public.item"], in: .import)
        present(documentsController, animated: true, completion: nil)
    }
}

let nc = UINavigationController(rootViewController: MyViewController())
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = nc
