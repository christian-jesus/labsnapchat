import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        guard let email = emailTextField.text, let password = passwordTextField.text else {
            print("Email o contraseña no válidos")
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            print("Intentando iniciar sesión")
            if let error = error {
                print("Se presentó el siguiente error: \(error.localizedDescription)")
            } else {
                print("Inicio de sesión exitoso")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
