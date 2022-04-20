//
//  RevealViewController.swift
//  Chapter04-SideBarDIY
//
//  Created by 한규철 on 4/7/R4.
//

import UIKit
class RevealViewController : UIViewController {
    var contentVC: UIViewController?    //콘텐츠를 담당할 뷰 컨트롤러
    var sideVC: UIViewController? //사이드 바 메뉴를 담당할 뷰 컨트롤러
    var isSideBarShowing = false //현재 사이드 바가 열려 있는지 여부
    let SLIDE_TIME = 0.3    //사이드 바가 열리고 닫히는데 걸리는 시간
    let SLIDEBAR_WIDTH: CGFloat = 260   //사이드 바가 열릴 너비
    
  
    
    //초기 화면을 설정한다.
    func setupView() {
        //프론트 컨트롤러 객체를 읽어온다.
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "sw_front") as? UINavigationController {
            //읽어온 컨트롤러를 클래스 전체에서 참조할 수 있도록 contentVC 속성에 저장한다.
            self.contentVC = vc
            
            //프론트 컨트롤러 객체를 메인 컨트롤러의 자식으로 등록한다.
            self.addChild(vc)   //프론트 컨트롤러를 메인 컨트롤러의 자식 뷰 컨트롤러로 등록
            vc.view.frame = self.view.frame
            self.view.addSubview(vc.view) // 프론트 컨트롤러의 뷰를 메인 컨트롤러의 서브 뷰로 등록
            //프론트 컨트롤롤러에 부모 뷰 컨트롤러가 바뀌었음을 알려준다.
            vc.didMove(toParent: self)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    //사이드 바의 뷰를 읽어온다.
    func getSideView() {
        
    }
    
    //콘텐츠 뷰에 그림자 효과를 준다
    func setShadowEffect(shadow: Bool, offset: CGFloat) {
        
    }
    
    //사이드 바를 연다
    func openSideBar(_ complete: (() -> Void)? ) {
        
    }
    
    //사이드바를 닫는다
    func closeSideBar(_ complete: (() -> Void)?) {
        
    }
}
