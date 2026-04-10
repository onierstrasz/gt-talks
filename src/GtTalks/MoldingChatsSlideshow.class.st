"
For the [Smalltalk Meetup Zurich](https://zurich.smalltalk.world) on 2026-04-26.
"
Class {
	#name : 'MoldingChatsSlideshow',
	#superclass : 'PrioritySlideshow',
	#category : 'GtTalks-Slideshows',
	#package : 'GtTalks',
	#tag : 'Slideshows'
}

{ #category : 'acccessing' }
MoldingChatsSlideshow >> slidePriorities [
	<gtExample>
	<return: #Array>
	^ #()	
]

{ #category : 'slides' }
MoldingChatsSlideshow >> title: aSlide [
	<gtSlide>
	<text: 
'#Molding Chats'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 30;
		titleWithFormat: (self asTitle: 'Molding Chats');
		subtitleWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')	"priority: (self priorityFor: #titleSlideFor:);"
]
