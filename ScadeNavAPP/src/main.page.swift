import ScadeKit

class MainPageAdapter: SCDLatticePageAdapter {

    var mapWidget : SCDWidgetsMapWidget!
    let universityOfOstrava = SCDPlatformLocationCoordinate(latitude:49.840722,longitude:18.288480)
    
    override func load(_ path: String) {        
        super.load(path)     
        self.mapWidget = self.page!.getWidgetByName("mapwidget1") as! SCDWidgetsMapWidget 
        self.mapWidget.setRegion(universityOfOstrava, latitudinalMeters: 1000, longitudinalMeters: 1000)
        let annotation = SCDWidgetsMapAnnotation(location:universityOfOstrava)
        let svgImage = SCDSvgImage(width:SCDSvgUnit(value:25),height:SCDSvgUnit(value:25))
        svgImage.xhref = "/Users/haitake/Scade/sctst/src/PushPin-01b-Arvin61r58.svg"
        annotation.drawing = svgImage
        self.mapWidget.annotations.append(annotation)
    }
    
  
    
 

    
}