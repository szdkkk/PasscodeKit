//
// Copyright (c) 2021 Related Code - https://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {

		PasscodeKit.delegate = self
		PasscodeKit.start()
        
        PasscodeKit.navigationBarColor = .green
        PasscodeKit.navigationTitleColor = .white
        PasscodeKit.navigationBarTintColor = .orange
        PasscodeKit.statusBarStyle = .darkContent

		window = UIWindow(frame: UIScreen.main.bounds)

		let viewController = ViewController(nibName: "ViewController", bundle: nil)
		let navController = UINavigationController(rootViewController: viewController)

		window?.rootViewController = navController
		window?.makeKeyAndVisible()

		return true
	}
}

// MARK: - PasscodeKitDelegate
//-----------------------------------------------------------------------------------------------------------------------------------------------
extension AppDelegate: PasscodeKitDelegate {

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func passcodeCheckedButDisabled() {

		print(#function)
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func passcodeEnteredSuccessfully() {

		print(#function)
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func passcodeMaximumFailedAttempts() {

		print(#function)
	}
}
