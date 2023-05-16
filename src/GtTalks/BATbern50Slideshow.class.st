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
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'aplPrimeSieve.jpg' ]
]

{ #category : #pages }
BATbern50Slideshow >> database [
	"All the pages"
	<gtExample>
	<noTest>
	^ self db
]

{ #category : #slides }
BATbern50Slideshow >> eniacManualTesting: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #eniacManualTesting:);
		newFadedText: 'Manual testing';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'eniac.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> ibm2741: aSlide [
		<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #ibm2741:);
		newFadedText: 'The IBM 2741';
		element: [ GtFileUtility imageElementFromFileReference: self pictures / 'ibm2741.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> ibmOpticalCard: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #ibmOpticalCard:);
		newFadedText: 'IBM education FORTRAN optical mark card';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'ibmOpticalMarkCard.jpg' ]
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

{ #category : #slides }
BATbern50Slideshow >> modelingGap: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #modelingGap:);
		subtitleWithFormat: (self asSubtitle: 'The Modeling Gap');
		paragraphWithFormat:
				(self
						asBigText:
'


Objects and the Paperless Office
')
]

{ #category : #slides }
BATbern50Slideshow >> oopEarlyHistory: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #oopEarlyHistory:);
		newFadedText: 'A brief early history of OOP';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'oopEarlyHistory.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> oopMap: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #oopMap:);
		newFadedText: 'Closing the modeling gap';
		element: [ GtWardleyMapSlide new json: self oopMapJSON ]
]

{ #category : #wardley }
BATbern50Slideshow >> oopMapJSON [
	^ '{
	"nodes" : [
		{
			"id" : "1192f782-31b8-0d00-bbf4-85220c124378",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.28431411265564316,
			"y" : 0.8447389476451392,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.083333333333333,
				"y" : 1.0833333333333333,
				"text" : "Low-level code"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "01d98384-31b8-0d00-bbf5-b2390c124378",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.2980038226944468,
			"y" : 0.5570573904275601,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 3.75,
				"y" : 1.6666666666666667,
				"text" : "Design"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "3a79df84-31b8-0d00-bbf6-f9080c124378",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.43699123374777976,
			"y" : 0.16035158264385,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -6.166666666666667,
				"y" : -0.3333333333333333,
				"text" : "Application domain"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "ecc6c485-31b8-0d00-bbf7-96930c124378",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5220779094735264,
			"y" : 0.6136669018022712,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.5,
				"y" : 0.4166666666666667,
				"text" : "OO code"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "a4fb4e86-31b8-0d00-bbf8-a0cb0c124378",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5310504818333048,
			"y" : 0.46550916850481655,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.75,
				"y" : 0.3333333333333333,
				"text" : "OO design"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "031fab86-31b8-0d00-bbf9-6f720c124378",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5528725205841785,
			"y" : 0.33066434984335197,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.416666666666667,
				"y" : 0.5,
				"text" : "OO requirements"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "5780a287-31b8-0d00-bbfa-c2fe0c124378",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.31059520277704183,
			"y" : 0.37506971087999175,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.416666666666667,
				"y" : 2.0,
				"text" : "Requirements"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "62cbe291-31b8-0d00-bbfe-d0560c124378",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.48800553898574933,
			"y" : 0.06826363029060784,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -5.5,
				"y" : 0.3333333333333333,
				"text" : "Customer needs"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "42dfe198-31b8-0d00-bc00-e3760c124378",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.34645946564685726,
			"y" : 0.22104645706940637,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -8.75,
				"y" : 0.16666666666666666,
				"text" : "Development and maintenance"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "4afee69a-31b8-0d00-bc01-925a0c124378",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6320564423996726,
			"y" : 0.19776571830404843,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 11.333333333333334,
				"y" : 0.4166666666666667,
				"text" : "Development and maintenance"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "01d98384-31b8-0d00-bbf5-b2390c124378",
			"to" : "5780a287-31b8-0d00-bbfa-c2fe0c124378",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "1192f782-31b8-0d00-bbf4-85220c124378",
			"to" : "01d98384-31b8-0d00-bbf5-b2390c124378",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "a4fb4e86-31b8-0d00-bbf8-a0cb0c124378",
			"to" : "031fab86-31b8-0d00-bbf9-6f720c124378",
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
			"from" : "ecc6c485-31b8-0d00-bbf7-96930c124378",
			"to" : "a4fb4e86-31b8-0d00-bbf8-a0cb0c124378",
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
			"from" : "5780a287-31b8-0d00-bbfa-c2fe0c124378",
			"to" : "3a79df84-31b8-0d00-bbf6-f9080c124378",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "031fab86-31b8-0d00-bbf9-6f720c124378",
			"to" : "3a79df84-31b8-0d00-bbf6-f9080c124378",
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
			"from" : "62cbe291-31b8-0d00-bbfe-d0560c124378",
			"to" : "3a79df84-31b8-0d00-bbf6-f9080c124378",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "5780a287-31b8-0d00-bbfa-c2fe0c124378",
			"to" : "031fab86-31b8-0d00-bbf9-6f720c124378",
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
			"from" : "01d98384-31b8-0d00-bbf5-b2390c124378",
			"to" : "a4fb4e86-31b8-0d00-bbf8-a0cb0c124378",
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
			"from" : "1192f782-31b8-0d00-bbf4-85220c124378",
			"to" : "ecc6c485-31b8-0d00-bbf7-96930c124378",
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
			"from" : "42dfe198-31b8-0d00-bc00-e3760c124378",
			"to" : "4afee69a-31b8-0d00-bc01-925a0c124378",
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
			"from" : "4afee69a-31b8-0d00-bc01-925a0c124378",
			"to" : "031fab86-31b8-0d00-bbf9-6f720c124378",
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
			"from" : "42dfe198-31b8-0d00-bc00-e3760c124378",
			"to" : "5780a287-31b8-0d00-bbfa-c2fe0c124378",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		}
	]
}'
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
			theTypist:
			ibm2741:
			ibmOpticalCard:
			markCardsMap:
		
		modelingGap:
			theElectronicOffice:
			whereAreTheObjects:
			oopEarlyHistory:
			oopMap:
		
		testingGap:
			eniacManualTesting:
		
		)
]

{ #category : #slides }
BATbern50Slideshow >> testingGap: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #testingGap:);
		subtitleWithFormat: (self asSubtitle: 'The Testing Gap');
		paragraphWithFormat:
				(self
						asBigText: 
'


From manual to automated testing
')
]

{ #category : #slides }
BATbern50Slideshow >> theElectronicOffice: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #theElectronicOffice:);
		newFadedText: 'Building the Electronic Office (1980)';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'theElectronicOffice.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> theTypist: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #theTypist:);
		newFadedText: 'The typist at the kitchen table?';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'reykjavikMuseumTheTypist.jpg' ]
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

{ #category : #slides }
BATbern50Slideshow >> whereAreTheObjects: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #whereAreTheObjects:);
		newFadedText: 'Where are the Objects?';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'whereAreTheObjects.jpg' ]
]
