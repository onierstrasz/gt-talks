Class {
	#name : #BATbern50Slideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #accessing }
BATbern50Slideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
BATbern50Slideshow >> aplSieve: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #aplSieve:);
		newFadedText: 'A prime sieve in APL';
		element: [ GtFilePictureLiveSlide new fileReference: self pictures / 'apl-prime-sieve.png' ]
]

{ #category : #pages }
BATbern50Slideshow >> database [
	"All the pages"
	<gtExample>
	<noTest>
	^ self db
]

{ #category : #slides }
BATbern50Slideshow >> ibm2741: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #ibm2741:);
		newFadedText: 'The IBM 2741';
		element: [ GtFilePictureLiveSlide new fileReference: self pictures / 'ibm2741.png' ]
]

{ #category : #slides }
BATbern50Slideshow >> ibmOpticalCard: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #ibmOpticalCard:);
		newFadedText: 'IBM education FORTRAN opticalmark card';
		element: [ GtFilePictureLiveSlide new fileReference: self pictures / 'ibm-optical-mark-card.png' ]
]

{ #category : #initialization }
BATbern50Slideshow >> initializeDb [
	"self db addPage: self inspectingLudoPage."
]

{ #category : #wardley }
BATbern50Slideshow >> markCards2Terminals [
	<gtExample>
	<noTest>
	^ LeWardleyMapSnippet new
		wardleyMap: (GtWardleyMapFromDictionaryImporter new
				importWardleyMapFrom: (STONJSON fromString: self markCards2TerminalsJSON))
]

{ #category : #wardley }
BATbern50Slideshow >> markCards2TerminalsJSON [
	^ '{
	"nodes" : [
		{
			"id" : "fb6a3c23-2eb8-0d00-8c40-f6060af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4170551300048828,
			"y" : 0.07693088242835219,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.5,
				"y" : 0.25,
				"text" : "Get it running"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "c1886227-2eb8-0d00-8c41-41130af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.2930984343923688,
			"y" : 0.7252334825476212,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 2.9166666666666665,
				"y" : 2.1666666666666665,
				"text" : "Optical mark cards"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "88147c45-2eb8-0d00-8d26-58a30af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5829397682771899,
			"y" : 0.6831589266488112,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 3.25,
				"y" : 2.5,
				"text" : "Punched  cards"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "3d501148-2eb8-0d00-8d27-69e80af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.8579581964945253,
			"y" : 0.6338377933024274,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.75,
				"y" : 2.6666666666666665,
				"text" : "Live APL terminal"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "8a19f06b-2eb8-0d00-8df8-1b3b0af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.9198435972629521
			},
			"x" : 0.6932200577833807,
			"y" : 0.1570638947714977,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.0,
				"y" : 0.16666666666666666,
				"text" : "Experimentation"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "624bad6e-2eb8-0d00-8dfa-76970af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.30529647021361594,
			"y" : 0.42227124190276194,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.5,
				"y" : 0.3333333333333333,
				"text" : "Send by courier"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "07dcb970-2eb8-0d00-8dfb-efab0af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5614019299592676,
			"y" : 0.374449015206791,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -5.0,
				"y" : 0.5,
				"text" : "Give to operator"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "dbd7e071-2eb8-0d00-8dfc-dc800af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7854364591791964,
			"y" : 0.35634493121796695,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0,
				"y" : 1.25,
				"text" : "Just run it"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "c1886227-2eb8-0d00-8c41-41130af31c02",
			"to" : "88147c45-2eb8-0d00-8d26-58a30af31c02",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 2.0,
			"arrow" : true
		},
		{
			"from" : "88147c45-2eb8-0d00-8d26-58a30af31c02",
			"to" : "3d501148-2eb8-0d00-8d27-69e80af31c02",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 2.0,
			"arrow" : true
		},
		{
			"from" : "c1886227-2eb8-0d00-8c41-41130af31c02",
			"to" : "624bad6e-2eb8-0d00-8dfa-76970af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "88147c45-2eb8-0d00-8d26-58a30af31c02",
			"to" : "07dcb970-2eb8-0d00-8dfb-efab0af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "3d501148-2eb8-0d00-8d27-69e80af31c02",
			"to" : "dbd7e071-2eb8-0d00-8dfc-dc800af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "624bad6e-2eb8-0d00-8dfa-76970af31c02",
			"to" : "fb6a3c23-2eb8-0d00-8c40-f6060af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "07dcb970-2eb8-0d00-8dfb-efab0af31c02",
			"to" : "fb6a3c23-2eb8-0d00-8c40-f6060af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "dbd7e071-2eb8-0d00-8dfc-dc800af31c02",
			"to" : "fb6a3c23-2eb8-0d00-8c40-f6060af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "dbd7e071-2eb8-0d00-8dfc-dc800af31c02",
			"to" : "8a19f06b-2eb8-0d00-8df8-1b3b0af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 2.0,
			"arrow" : true
		},
		{
			"from" : "8a19f06b-2eb8-0d00-8df8-1b3b0af31c02",
			"to" : "fb6a3c23-2eb8-0d00-8c40-f6060af31c02",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.9198435972629521
			},
			"width" : 1.0,
			"arrow" : false
		}
	]
}'
]

{ #category : #slides }
BATbern50Slideshow >> markCardsMap: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #markCardsMap:);
		newFadedText: 'Closing the realization gap';
		element: [ GtWardleyMapSlide new json: self markCards2TerminalsJSON ]
]

{ #category : #accessing }
BATbern50Slideshow >> pictures [
	<gtExample>
	<noTest>
	^ GtResourcesUtility
		resourceAtPath: Path * 'onierstrasz' / 'gt-talks' / 'data' / 'images'
]

{ #category : #slides }
BATbern50Slideshow >> realizationGap: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #realizationGap:);
		subtitleWithFormat: (self asSubtitle: 'The Realization Gap');
		paragraphWithFormat:
				(self
						asBigText:
							'
From APL to FORTRAN
')
]

{ #category : #accessing }
BATbern50Slideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		titleSlide:
		
		realizationGap:
			aplSieve:
			ibm2741:
			theTypist:
			ibmOpticalCard:
			
			markCardsMap:
		
		modelingGap:
		
		)
]

{ #category : #slides }
BATbern50Slideshow >> theTypist: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #theTypist:);
		newFadedText: 'The typist at the kitchen table?';
		element: [ GtFilePictureLiveSlide new fileReference: self pictures / 'reykjavik-museum.png' ]
]

{ #category : #slides }
BATbern50Slideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide titleWithFooter
		priority: (self priorityFor: #titleSlide:);
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Mind the gap');
		subtitleWithFormat: (self asSubTitle: '50 years of shortening feedback loops');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
