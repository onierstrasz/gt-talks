Extension { #name : #GtProtoLiveSlide }

{ #category : #'*GtTalks' }
GtProtoLiveSlide >> titleWithFooter [
	^ GtTitleWithFooterLiveSlide new
		definingMethod: (GtPhlowDefiningMethodsCollector new 
			stack: thisContext stack;
			collect).
]
