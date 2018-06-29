//
//  FantasticView.swift
//  FantasticView
//
//  Created by Rafael Cunha on 29/06/2018.
//  Copyright © 2018 Rafael Cunha. All rights reserved.
//

import Foundation
import UIKit

class FantasticView : UIView{
    
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setTimer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setTimer(){
        let scheduleColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true){(timer) in
            UIView.animate(withDuration: 2.0){
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter += 1
            }
        }
        scheduleColorChanged.fire()
    }
    
}
