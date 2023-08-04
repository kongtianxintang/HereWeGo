//  @desc: 首页
//  @project: HereWeGo
//  Created by liwei on 2022/10/22.

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mineButton: UIButton!
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    private var mLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ret = kwcs_754_sin()
        print("ret -> \(ret)")
        
        initUI()
    }

    @IBAction func didClicklLocation(_ sender: UIButton) {
        
    }
    
    @IBAction func didClickShowMine(_ sender: UIButton) {
        
    }
    
    
}

private extension ViewController {
    /// 初始化ui页面
    func initUI(){
        requestLocation()
        setMapViewConfigure()
    }
    
    /// 获取定位权限
    func requestLocation(){
        mLocationManager.requestWhenInUseAuthorization()
    }
    
    /// 设置map属性
    func setMapViewConfigure(){
        mapView.delegate = self
        
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        mapView.mapType = .standard
    }
}

extension ViewController: MKMapViewDelegate {
    func mapViewDidFinishLoadingMap(_ mapView: MKMapView) {
        print("地图加载完成\(#function)")
    }
}
