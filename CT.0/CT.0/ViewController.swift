//
//  ViewController.swift
//  CT.0
//
//  Created by Nathan Maglasang on 9/5/2024.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ///Used to do something if the slider is in use or not inuse
      //  slider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
      // let valueLabel.isHidden = true
        pickerView.delegate = self
            pickerView.dataSource = self
    }
    //Object Initialisation
    @IBOutlet weak var mxlabel: UILabel!
    @IBOutlet weak var setmaxbttn: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var addcalbutton: UIButton!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var totalcal: UILabel!
    @IBOutlet weak var TABLE: UITableView!
    @IBOutlet weak var RstButton: UIButton!
    
    
    @IBAction func FOOD(_ sender: UIButton) {
        // Call the function to display the message box
        showMessage()
    }
    @IBAction func SliderValueChanged(_ sender: UISlider) {
        
        updateLabelWithSliderValue()
        sender.value = roundf(sender.value)
        
        let trackRect = sender.trackRect(forBounds: sender.frame)
        let thumbRect = sender.thumbRect(forBounds: sender.bounds, trackRect: trackRect, value: sender.value)
        self.sliderLabel.center = CGPoint(x: thumbRect.midX, y: self.sliderLabel.center.y)
        let boolSlider:Bool? = true
        
    }
    
    var previousSliderValue: Float = 0.0
   ///ALLTHIS IS FOR HTE SLIDER IN USE NOT IN USE WIP
    ///Tried to make the number above the slider go away when not in use
  //  @objc func sliderValueChanged(_ sender: UISlider){
    //    let value = sender.value
                
    //if value != previousSliderValue {
      
  //      sliderLabel.isHidden = false
 //       hideLabelTimer?.invalidate()
   // } else {
    //        self.valueLabel.isHidden = true
    //}
    
   // previousSliderValue = value
//}if
    func updateLabelWithSliderValue() {
        sliderLabel.isHidden = false
        let sliderValue = slider.value
        let RsliderValue = String(format: "%.0f", sliderValue)
        addcalbutton.setTitle("Add " + "\(RsliderValue)" + " Calories", for: .normal)
       
        sliderLabel.text = "\(RsliderValue)"
        let fontValue : Int = 17 + ((Int(sliderValue)/1000)*2)
        sliderLabel.font = UIFont.systemFont(ofSize: CGFloat(fontValue), weight: .heavy)


        
        }
    @IBAction func RstButtn(_ sender: UIButton) {
        totalcal.text = "???"
    }
    
    @IBAction func AddCal(_ sender: UIButton) {
       caladd()
    }
    func caladd(){
     
        sliderLabel.isHidden = true
        let sliderValue = slider.value
        let RsliderValue = String(format: "%.0f", sliderValue)
        totalcal.text = "\(RsliderValue)" + " Calories"
    }
    
    func showMessage() {
        let alertController = UIAlertController(title: "Message Box", message: "Hello this is a message box", preferredStyle: .alert)
        
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
        let minValue = 0
        let maxValue = 10000
        let increment = 100
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return ((maxValue - minValue) / increment) + 1
        }
        
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            let value = minValue + (row * increment)
            return "\(value)"
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            let selectedvalue = minValue + (row * increment)
            print("Selected value: \(selectedvalue)")

        }
    
    @IBAction func mxbtn(_ sender: UIButton) {
        let selectedRow = pickerView.selectedRow(inComponent: 0)
                let selectedValue = minValue + (selectedRow * increment)
            //mxlabel.text = "Max Calories: "
    }
}



       
    
    
    
    


