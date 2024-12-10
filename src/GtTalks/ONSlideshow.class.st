"
Abstract parent with some utilities for my slideshows.
"
Class {
	#name : #ONSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #image }
ONSlideshow >> feenkLogo [
	<gtExample>
	^ FileLocator gtResource / 'feenkcom' / 'gtoolkit' / 'doc' / 'feenk.png'
]

{ #category : #utility }
ONSlideshow >> gtTalksImages [
	<gtExample>
	^ FileLocator gtResource / 'onierstrasz' / 'gt-talks' / 'data' / 'images'
]

{ #category : #mondrian }
ONSlideshow >> onMondrian [
	<gtExample>
	| pbe oorp youtube pics explicitPositions m picsWidths |
	pbe := self gtTalksImages / 'pbe.jpg'.
	oorp := self gtTalksImages / 'oorp.jpg'.
	youtube := self gtTalksImages / 'on-youtube.jpg'.
	pics := {self onPic.
			pbe.
			oorp.
			self onWebsiteQRcode.
			youtube}.
	picsWidths := {{self onPic.
				500}.
			{self onWebsiteQRcode.
				500}.
			{self unibeLogo.
				300}.
			{oorp.
				300}.
			{pbe.
				300}.
			{self feenkLogo.
				300}.
			{youtube.
				600}}.
	explicitPositions := {-1016.8333333333333 @ -764.3478393554688.
			-1020.8333333333333 @ -208.34783935546875.
			-163.83333333333326 @ -721.3478393554688.
			308.16666666666674 @ -809.3478393554688.
			637.1666666666667 @ -702.3478393554688.
			-185.83333333333326 @ -223.34783935546875.
			325.16666666666674 @ -134.34783935546875}.
	m := GtMondrian new.
	m nodes
		stencil: [ :picWidth | 
			(GtFileUtility imageElementFromFileReference: picWidth first)
				margin: (BlInsets all: 10);
				width: picWidth second;
				yourself ];
		with: picsWidths.	"m layout tree."
	m layout custom: BlBasicLayout new.
	m root children
		withIndexDo: [ :child :n | child relocate: (explicitPositions at: n) ].
	^ m
]

{ #category : #image }
ONSlideshow >> onPic [
	<gtExample>
	^ self gtTalksImages / 'on-nov-2017-no-painting-small.jpg'
]

{ #category : #image }
ONSlideshow >> onWebsiteQRcode [
	<gtExample>
	^ self gtTalksImages / 'qrcode-www.oscar.nierstrasz.org.png'
]

{ #category : #image }
ONSlideshow >> unibeLogo [
	<gtExample>
	^ self gtTalksImages / 'ub_8pt-rgb.png'
]
