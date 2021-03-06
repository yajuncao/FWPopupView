//
//  FWCustomPopupDemoVC.swift
//  FWPopupView
//
//  Created by xfg on 2018/5/24.
//  Copyright © 2018年 xfg. All rights reserved.
//

import Foundation
import UIKit

class FWCustomPopupDemoVC: UITableViewController {
    
    /// 注意：这边不同的示例可能还附加演示了一些特性（比如：遮罩层是否能够点击、遮罩层的背景颜色等等），有用到时可以参考
    var titleArray = ["center - scale", "topCenter - position", "topCenter - frame", "topCenter - scale", "leftCenter - position", "leftCenter - frame", "leftCenter - scale", "bottomCenter - position", "bottomCenter - frame", "bottomCenter - scale", "rightCenter - position", "rightCenter - frame", "rightCenter - scale"]
    
    lazy var customPopupView1: FWCustomPopupView = {
        
        let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4))
        
        let vProperty = FWPopupViewProperty()
        vProperty.popupCustomAlignment = .topCenter
        vProperty.popupAnimationType = .frame
        vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
        vProperty.touchWildToHide = "1"
        vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(64, 0, 0, 0)
        vProperty.animationDuration = 0.2
        customPopupView.vProperty = vProperty
        
        return customPopupView
    }()
    
    lazy var customPopupView2: FWCustomPopupView = {
        
        let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4))
        
        let vProperty = FWPopupViewProperty()
        vProperty.popupCustomAlignment = .topCenter
        vProperty.popupAnimationType = .frame
        vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
        vProperty.touchWildToHide = "1"
        vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(64, 0, 0, 0)
        vProperty.animationDuration = 0.2
        customPopupView.vProperty = vProperty
        
        return customPopupView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "自定义弹窗"
        
        self.tableView.estimatedRowHeight = 44.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
    }
}

extension FWCustomPopupDemoVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return titleArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = titleArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.3))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .center
            vProperty.popupAnimationType = .scale
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.3)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
            vProperty.animationDuration = 0.2
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
            
        case 1:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .topCenter
            vProperty.popupAnimationType = .position
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
            vProperty.animationDuration = 0.2
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
        case 2:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .topCenter
            vProperty.popupAnimationType = .frame
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(64, 0, 0, 0)
            vProperty.animationDuration = 0.5
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
        case 3:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.4))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .topCenter
            vProperty.popupAnimationType = .scale
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(64, 0, 0, 0)
            vProperty.animationDuration = 0.5
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
            
        case 4:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .leftCenter
            vProperty.popupAnimationType = .position
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
            vProperty.animationDuration = 0.3
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
        case 5:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.5))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .leftCenter
            vProperty.popupAnimationType = .frame
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
            vProperty.animationDuration = 0.3
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
        case 6:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.5))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .leftCenter
            vProperty.popupAnimationType = .scale
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 50, 0, 0)
            vProperty.animationDuration = 0.3
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
            
        case 7:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .bottomCenter
            vProperty.popupAnimationType = .position
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
            vProperty.animationDuration = 0.2
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
        case 8:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .bottomCenter
            vProperty.popupAnimationType = .frame
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 0, 64, 0)
            vProperty.animationDuration = 0.5
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
        case 9:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.4))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .bottomCenter
            vProperty.popupAnimationType = .scale
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(64, 0, 0, 0)
            vProperty.animationDuration = 0.5
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
            
        case 10:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .rightCenter
            vProperty.popupAnimationType = .position
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
            vProperty.animationDuration = 0.3
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
        case 11:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.5))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .rightCenter
            vProperty.popupAnimationType = .frame
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 50)
            vProperty.animationDuration = 0.3
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
        case 12:
            let customPopupView = FWCustomPopupView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.5))
            
            let vProperty = FWPopupViewProperty()
            vProperty.popupCustomAlignment = .rightCenter
            vProperty.popupAnimationType = .scale
            vProperty.maskViewColor = UIColor(white: 0, alpha: 0.5)
            vProperty.touchWildToHide = "1"
            vProperty.popupViewEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
            vProperty.animationDuration = 0.3
            customPopupView.vProperty = vProperty
            
            customPopupView.show()
            break
            
        default:
            break
        }
    }
}
