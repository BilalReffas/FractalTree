//: A UIKit based Playground for presenting user interface

import PlaygroundSupport
import UIKit

class FractalTree: UIView {

    private let path = UIBezierPath()
    
    private lazy var shapeLayer: CAShapeLayer = {
        var shapeLayer = CAShapeLayer()
        shapeLayer.lineJoin = .bevel
        shapeLayer.fillColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        shapeLayer.strokeColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).cgColor
        shapeLayer.lineWidth = 4
        shapeLayer.path = path.cgPath
        self.layer.addSublayer(shapeLayer)
        return shapeLayer
    }()
    
    init(frame: CGRect, depth: Int, x: CGFloat, y: CGFloat, startAngle: CGFloat, modificationAngle: CGFloat, branchLength: CGFloat) {
        super.init(frame: frame)
        backgroundColor = .white
        setUp(x: x, y: y)
        drawRecursionTree(depth, x: x, y: y, startAngle: startAngle, modificationAngle: modificationAngle, branchLength: branchLength)
        startAnimation()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func startAnimation() {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.duration = 2
        shapeLayer.add(animation, forKey: "MyAnimation")
    }
    
    private func setUp(x: CGFloat, y: CGFloat) {
        path.move(to: CGPoint(x: x, y: y))
    }
    
    private func drawRecursionTree(_ depth: Int, x: CGFloat, y: CGFloat, startAngle: CGFloat, modificationAngle: CGFloat, branchLength: CGFloat) {
        if depth == 0 { return }

        // Calculate Coordinates
        let x2 = x + cos(startAngle * CGFloat.pi / 180) * branchLength
        let y2 = y + sin(startAngle * CGFloat.pi / 180) * branchLength

        // Draw the calculcatet lines
        path.move(to: CGPoint(x: x, y: y))
        path.addLine(to: CGPoint(x: x2, y: y2))
        
        // Draw left and right branch recursively
        drawRecursionTree(depth - 1, x: x2, y: y2, startAngle: startAngle - modificationAngle, modificationAngle: modificationAngle, branchLength: branchLength / 1.2)
        drawRecursionTree(depth - 1, x: x2, y: y2, startAngle: startAngle + modificationAngle, modificationAngle: modificationAngle, branchLength: branchLength / 1.2)
    }
}

let frame = CGRect(x: 0, y: 0, width: 500, height: 500)
let fractal = FractalTree(frame: frame, depth: 8, x: frame.width / 2, y: frame.height, startAngle: -90, modificationAngle: 35, branchLength: 50)

PlaygroundPage.current.liveView = fractal
