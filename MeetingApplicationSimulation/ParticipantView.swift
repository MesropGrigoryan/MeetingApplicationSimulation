
import UIKit.UIView

final class ParticipantView: UIView {
	var identifier: String
	var indexLabel: UILabel
	
	init(frame: CGRect, index: Int) {
		self.identifier = UUID().uuidString
		self.indexLabel = UILabel()
		super.init(frame: frame)
		
		backgroundColor = UIColor.random()
		indexLabel.textAlignment = .center
		indexLabel.textColor = .black
		indexLabel.font = UIFont.boldSystemFont(ofSize: 20)
		indexLabel.text = "\(index + 1)"
		indexLabel.center = CGPoint(x: bounds.midX, y: bounds.midY)
		addSubview(indexLabel)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

extension UIColor {
	static func random() -> UIColor {
		let red = CGFloat(arc4random()) / CGFloat(UInt32.max)
		let green = CGFloat(arc4random()) / CGFloat(UInt32.max)
		let blue = CGFloat(arc4random()) / CGFloat(UInt32.max)
		
		return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
	}
}
