//
//  AxUINumberView.swift
//  F-SHOP
//
//  Created by 井川　雅央 on 2014/07/30.
//  Copyright (c) 2014年 MASAO IKAWA. All rights reserved.
//

import UIKit

class AxUINumberView: UIView {
    
    @property activeTextField:UITextField

    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        if (self) {
            // UINibで作成したxibファイルを取得
            var nib:UINib = UINib(nibWithNibName:"AxUINumber", bundle:nil)
            // 0番目の要素（一番最初に置いたUIView）を取得して自分自身にセット
            // ※ self は、initメソッド内であれば代入できる
            self = nib.instantiateWithOwner(ownerOrNil: nil, options: nil[0])
        }
        return self
    }

    (void)viewDidLoad {
        super.viewDidLoad
    
        var cnkb:CustomNumKeyboard = CustomNumKeyboard()
        cnkb.activeTextField = kingakuTx
        kingakuTx.inputView = cnkb
    }
    
    /**
    * 数値ボタン押下時処理
    *
    * @param sender 押下されたUIButton
    */
    (IBAction)numButton:(UIButton *)sender{
        var numtag = sender.tag
        self.activeTextField.text = self.activeTextField.text.stringByAppendingString:numtag
    }
    
    /**
    * return ボタン押下時処理
    * このViewに設定されたTextFieldのキーボードを閉じる
    */
    (IBAction)closeKeyboard:(id)sender {
        self.activeTextField.resignFirstResponder
    }


}
