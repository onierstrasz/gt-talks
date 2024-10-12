Class {
	#name : #ExplainableSystemsSlideshow,
	#superclass : #HuaweiGTSlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
ExplainableSystemsSlideshow >> title: aSlide [
	<gtSlide>
	<text: '# Explainable systems
I''d like to give you a quick overview of what we mean by “Explainable Systems”, introduce to you the Glamorous Toolkit, a platform for developing explainable systems with the help of moldable tools, and explain how examples serve as a bridge between traditional tests and live documentation within explainable systems.'>
	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Explaining Explainable Systems');
		"subtitleWithFormat: (self asBigText: 'Huawei Bern — 2024-07-23');"
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
