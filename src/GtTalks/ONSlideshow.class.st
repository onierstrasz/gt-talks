"
Abstract parent with some utilities for my slideshows.
"
Class {
	#name : #ONSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #mondrian }
ONSlideshow >> onMondrian [
	<gtExample>
	| images on pbe oorp qr youtube pics explicitPositions m picsWidths unibe feenk |
	images := FileLocator gtResource / 'onierstrasz' / 'gt-talks' / 'data'
			/ 'images'.
	on := images / 'on-nov-2017-no-painting-small.jpg'.
	unibe := images / 'ub_8pt-rgb.png'.
	pbe := images / 'pbe.jpg'.
	oorp := images / 'oorp.jpg'.
	qr := images / 'qrcode-www.oscar.nierstrasz.org.png'.
	youtube := images / 'on-youtube.jpg'.
	feenk := FileLocator gtResource / 'feenkcom' / 'gtoolkit' / 'doc' / 'feenk.png'.
	pics := {on.
			pbe.
			oorp.
			qr.
			youtube}.
	picsWidths := {{on.
				500}.
			{qr.
				500}.
			{unibe.
				300}.
			{oorp.
				300}.
			{pbe.
				300}.
			{feenk.
				300}.
			{youtube.
				600}}.
	explicitPositions := {(-1016.8333333333333@ -764.3478393554688). (-1020.8333333333333@ -208.34783935546875). (-163.83333333333326@ -721.3478393554688). (308.16666666666674@ -809.3478393554688). (637.1666666666667@ -702.3478393554688). (-185.83333333333326@ -223.34783935546875). (325.16666666666674@ -134.34783935546875)}.
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
