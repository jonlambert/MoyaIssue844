import UIKit
import RxSwift
import RxCocoa
import Moya

class WelcomeViewModel: NSObject {
    
    func download() -> Observable<Moya.Response> {
        let provider = RxMoyaProvider<API>(
            endpointClosure:  MoyaProvider.defaultEndpointMapping,
            requestClosure: MoyaProvider.defaultRequestMapping,
            stubClosure: MoyaProvider.neverStub,
            manager: RxMoyaProvider<API>.defaultAlamofireManager(),
            plugins: [NetworkLoggerPlugin(cURL: true)],
            trackInflights: true
        )
        return provider.request(.ping)
    }
    
    override init() {
        super.init()
    }
}

class WelcomeViewController: UIViewController {
    
    private let disposeBag = DisposeBag()
    
    lazy var viewModel: WelcomeViewModel = {
        return WelcomeViewModel()
    }()
    
    override func viewDidLoad() {
        self
            .viewModel
            .download()
            .debug()
            .subscribe(onNext: { i in
                print(i)
            })
            .addDisposableTo(disposeBag)
    }
}
