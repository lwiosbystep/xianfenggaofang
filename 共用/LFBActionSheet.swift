//
//  LFBActionSheet.swift
//  爱鲜蜂仿2次
//
//  Created by lotawei on 16/8/13.
//  Copyright © 2016年 lotawei. All rights reserved.
//
//自定一弹出框
enum ShareType: Int {
    case WeiXinMyFriend = 1
    case WeiXinCircleOfFriends = 2
    case SinaWeiBo = 3
    case QQZone = 4
}

class LFBActionSheet: NSObject, UIActionSheetDelegate {
    
    private var selectedShaerType: ((shareType: ShareType) -> ())?
    private var actionSheet: UIAlertController?
    
    func showActionSheetViewShowInView(inView: UIView, selectedShaerType: ((shareType: ShareType) -> ())) {
        
        
        
//        actionSheet = UIActionSheet(title: "分享到",
//                                    delegate: self, cancelButtonTitle: "取消",
//                                    destructiveButtonTitle: nil,
//                                    otherButtonTitles: "微信好友", "微信朋友圈", "新浪微博", "QQ空间")
//        
//        self.selectedShaerType = selectedShaerType
//        
//        actionSheet?.showInView(inView)
        
    }
//    
//    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
//        print(buttonIndex)
//        if selectedShaerType != nil {
//            
//            switch buttonIndex {
//                
//            case ShareType.WeiXinMyFriend.rawValue:
//                selectedShaerType!(shareType: .WeiXinMyFriend)
//                break
//                
//            case ShareType.WeiXinCircleOfFriends.rawValue:
//                selectedShaerType!(shareType: .WeiXinCircleOfFriends)
//                break
//                
//            case ShareType.SinaWeiBo.rawValue:
//                selectedShaerType!(shareType: .SinaWeiBo)
//                break
//                
//            case ShareType.QQZone.rawValue:
//                selectedShaerType!(shareType: .QQZone)
//                break
//                
//            default:
//                break
//            }
//        }
//    }
    
}
