//
//  ViewControllerExtension.swift
//  beautyPicker
//
//  Created by WuYanlin on 15/4/6.
//  Copyright (c) 2015年 AllenWu. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource
{
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return beauties.count
    }
}

extension ViewController:UIPickerViewDelegate
{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        return beauties[row]
    }
}