Extension { #name : #CompiledMethod }

{ #category : #'*GtTalks' }
CompiledMethod >> gtSlideFor: aView [
	<gtView>
	(self hasPragmaNamed: #gtSlide) ifFalse: [ ^ aView empty ].
	^ aView forward
		title: 'Slide';
		priority: 5;
		object: [ | aSlide |
			aSlide := self
					valueWithReceiver: self methodClass new
					arguments: {GtProtoLiveSlide new}.
			(GtProtoLiveSlide new element
				element: [ (aSlide asElement size: 1200 @ 900) asScalableElement ])
				asElement ];
		view: #gtLiveFor:
]
