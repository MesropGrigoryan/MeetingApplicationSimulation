
import UIKit.UIView

final class MeetingAppViewModel {
	
	var participants: [ParticipantView] = []
	
	func checkLayout(in participantContainerView: UIView) {
		
		let width = (participantContainerView.frame.width - 60) / 2
		let height = (participantContainerView.frame.height - 100) / 4
		let viewWidth = participantContainerView.frame.width
		let viewHeight = participantContainerView.frame.height
		
		UIView.animate(withDuration: 0.3, delay: 0, options: .beginFromCurrentState) {
			
			switch self.participants.count {
				case 1:
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: viewWidth - 40,
																	height: viewHeight - 40)
				case 2:
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: viewWidth - 40,
																	height: (viewHeight - 60) / 2)
					self.participants[1].frame = CGRect(x: 20,
																	y: self.participants[0].frame.height + 40,
																	width: viewWidth - 40,
																	height: (viewHeight - 60) / 2)
				case 3:
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: viewWidth - 40,
																	height: (viewHeight - 60) / 2)
					self.participants[1].frame = CGRect(x: 20,
																	y: self.participants[0].frame.height + 40,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[2].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: (viewHeight + 20) / 2,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
				case 4:
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: viewWidth - 40,
																	height: (viewHeight - 60) / 2)
					self.participants[1].frame = CGRect(x: 20,
																	y: self.participants[0].frame.height + 40,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[2].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: (viewHeight + 20) / 2,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[3].frame = CGRect(x: 20,
																	y: self.participants[0].frame.height + self.participants[1].frame.height + 60,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
				case 5:
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: viewWidth - 40,
																	height: (viewHeight - 60) / 2)
					self.participants[1].frame = CGRect(x: 20,
																	y: self.participants[0].frame.height + 40,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[2].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: (viewHeight + 20) / 2,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[3].frame = CGRect(x: 20,
																	y: self.participants[0].frame.height + self.participants[1].frame.height + 60,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[4].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: self.participants[0].frame.height + self.participants[1].frame.height + 60,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
				case 6:
					
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: width,
																	height: height)
					self.participants[1].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: 20,
																	width: width,
																	height: height)
					self.participants[2].frame = CGRect(x: 20,
																	y: height + 40,
																	width: width,
																	height: height)
					self.participants[3].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: height + 40,
																	width: width,
																	height: height)
					self.participants[4].frame = CGRect(x: 20,
																	y: 2 * height + 60,
																	width: width,
																	height: height)
					self.participants[5].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: 2 * height + 60,
																	width: width,
																	height: height)
				case 7:
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: width,
																	height: height)
					self.participants[1].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: 20,
																	width: width,
																	height: height)
					self.participants[2].frame = CGRect(x: 20,
																	y: height + 40,
																	width: width,
																	height: height)
					self.participants[3].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: height + 40,
																	width: width,
																	height: height)
					self.participants[4].frame = CGRect(x: 20,
																	y: 2 * height + 60,
																	width: width,
																	height: height)
					self.participants[5].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: 2 * height + 60,
																	width: width,
																	height: height)
					self.participants[6].frame = CGRect(x: 20,
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
				case 8:
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: width,
																	height: height)
					self.participants[1].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: 20,
																	width: width,
																	height: height)
					self.participants[2].frame = CGRect(x: 20,
																	y: height + 40,
																	width: width,
																	height: height)
					self.participants[3].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: height + 40,
																	width: width,
																	height: height)
					self.participants[4].frame = CGRect(x: 20,
																	y: 2 * height + 60,
																	width: width,
																	height: height)
					self.participants[5].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: 2 * height + 60,
																	width: width,
																	height: height)
					self.participants[6].frame = CGRect(x: 20,
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[7].frame = CGRect(x: (width - 20) / 2 + 40,
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
				case 9:
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: viewWidth - 40,
																	height: (viewHeight - 60) / 2)
					self.participants[1].frame = CGRect(x: 20,
																	y: self.participants[0].frame.height + 40,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[2].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: (viewHeight + 20) / 2,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[3].frame = CGRect(x: 20,
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[4].frame = CGRect(x: (width - 20) / 2 + 40,
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[5].frame = CGRect(x: width + 40,
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[6].frame = CGRect(x: width + 60 + ((width - 20) / 2),
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[7].frame = CGRect(x: 20,
																	y: 3 * height + 100 + (height - 20) / 2,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[8].frame = CGRect(x: (width - 20) / 2 + 40,
																	y: 3 * height + 100 + (height - 20) / 2,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
				case 10:
					self.participants[0].frame = CGRect(x: 20,
																	y: 20,
																	width: viewWidth - 40,
																	height: (viewHeight - 60) / 2)
					self.participants[1].frame = CGRect(x: 20,
																	y: self.participants[0].frame.height + 40,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[2].frame = CGRect(x: (viewWidth - 60) / 2 + 40,
																	y: (viewHeight + 20) / 2,
																	width: (viewWidth - 60) / 2,
																	height: (viewHeight - 80) / 4)
					self.participants[3].frame = CGRect(x: 20,
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[4].frame = CGRect(x: (width - 20) / 2 + 40,
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[5].frame = CGRect(x: 20,
																	y: 3 * height + 100 + (height - 20) / 2,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[6].frame = CGRect(x: (width - 20) / 2 + 40,
																	y: 3 * height + 100 + (height - 20) / 2,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[7].frame = CGRect(x: width + 40,
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					self.participants[8].frame = CGRect(x: width + 60 + ((width - 20) / 2),
																	y: 3 * height + 80,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
					
					self.participants[9].frame = CGRect(x: width + 40,
																	y: 3 * height + 100 + (height - 20) / 2,
																	width: (width - 20) / 2,
																	height: (height - 20) / 2)
				default:
					break
			}
			for participant in self.participants {
				participant.indexLabel.frame = participant.bounds
			}
		}
	}
	func removeParticipantView(_ participantView: UIView) {
		UIView.animate(withDuration: 0.3, animations: {
			participantView.alpha = 0
		}) { (_) in
			participantView.removeFromSuperview()
		}
	}
	func removeLastParticipantView(_ participantView: UIView) {
		UIView.animate(withDuration: 0.3, animations: {
			participantView.alpha = 0
		}) { (_) in
			participantView.removeFromSuperview()
		}
	}
}
