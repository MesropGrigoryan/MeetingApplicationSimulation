
import UIKit

final class ViewController: UIViewController {
	
	let viewModel = MeetingAppViewModel()
	let participantContainerView = UIView()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
		addParticipant()
	}
	
	func setupUI() {
		// Adding participants container view
		participantContainerView.frame = CGRect(x: 0,
															 y: 0,
															 width: view.frame.width,
															 height: view.frame.height - 162)
		participantContainerView.center = view.center
		// Buttons for add and delete
		let addButton = UIButton(type: .system)
		addButton.setTitle("Add", for: .normal)
		addButton.addTarget(self,
								  action: #selector(addParticipant),
								  for: .touchUpInside)
		addButton.frame = CGRect(x: view.frame.width / 2 - 150,
										 y: view.frame.height - 75,
										 width: 100,
										 height: 40)
		
		let deleteButton = UIButton(type: .system)
		deleteButton.setTitle("Delete", for: .normal)
		deleteButton.addTarget(self,
									  action: #selector(deleteParticipant),
									  for: .touchUpInside)
		deleteButton.frame = CGRect(x: view.frame.width / 2 + 50,
											 y: view.frame.height - 75,
											 width: 100,
											 height: 40)
		
		//Adding in view
		view.addSubview(participantContainerView)
		view.addSubview(addButton)
		view.addSubview(deleteButton)
	}
	
	@objc func addParticipant() {
		guard viewModel.participants.count < 10 else {
			print("Maximum participants reached")
			return
		}
		let participant = ParticipantView(frame: .zero,
													 index: viewModel.participants.count) // Pass the index
		viewModel.participants.append(participant)
		participantContainerView.addSubview(participant)
		
		// Adding tap gesture recognizer
		let tapGesture = UITapGestureRecognizer(target: self,
															 action: #selector(participantTapped(_:)))
		participant.addGestureRecognizer(tapGesture)
		
		viewModel.checkLayout(in: participantContainerView)
		
	}

	
	@objc func participantTapped(_ sender: UITapGestureRecognizer) {
		guard let tappedParticipant = sender.view as? ParticipantView else {
			return
		}
		
		// Find index of tapped participant
		if let index = viewModel.participants.firstIndex(of: tappedParticipant) {
			// Remove from array and superview with animation
			viewModel.removeParticipantView(tappedParticipant)
			viewModel.participants.remove(at: index)
			viewModel.checkLayout(in: participantContainerView)
		}
	}
	
	@objc func deleteParticipant() {
		if viewModel.participants.isEmpty { return }
		let lastParticipant = viewModel.participants.removeLast()
		viewModel.removeLastParticipantView(lastParticipant)
		viewModel.checkLayout(in: participantContainerView)
	}
}
