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

{ #category : #example }
BATbern50Slideshow >> batBern50Slideshow [
	"Example for demo purposes"
	<gtExample>
	<noTest>
	^ self class new
]

{ #category : #slides }
BATbern50Slideshow >> codeDisconnected: aSlide [
	"https://www.pngwing.com/en/free-png-xxpby"

	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #codeDisconnected:);
		newFadedText: 'Code is disconnected from the running application';
		element: [ GtFileUtility imageElementFromFileReference: self pictures / 'splitBrain.jpg' ]
]

{ #category : #pages }
BATbern50Slideshow >> database [
	"All the pages"
	<gtExample>
	<noTest>
	^ self db
]

{ #category : #slides }
BATbern50Slideshow >> deploymentGap: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #deploymentGap:);
		subtitleWithFormat: (self asTitle: 'The Deployment Gap');
		paragraphWithFormat:
				(self
						asBigText:
'


From development to deployment
')
]

{ #category : #slides }
BATbern50Slideshow >> designPatternsFrameworks: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #designPatternsFrameworks:);
		newFadedText: 'Design Patterns, Components, Frameworks';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'gangOfFour.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> devOpsMap: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #devOpsMap:);
		newFadedText: 'Closing the deployment gap';
		element: [ self scaledWardleyMapForJson: self devOpsMapJSON ]
]

{ #category : #wardley }
BATbern50Slideshow >> devOpsMapJSON [
	^ '{
	"nodes" : [
		{
			"id" : "0371b1fd-43b8-0d00-b463-044e0a55bfcc",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.39478701200089666,
			"y" : 0.25655217306011807,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -6.25,
				"y" : 0.5833333333333334,
				"text" : "Operational system"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "feda24ff-43b8-0d00-b464-a4c30a55bfcc",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.2874194958810925,
			"y" : 0.6543180233008389,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -7.5,
				"y" : 0.25,
				"text" : "Manual deployment"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "11293400-44b8-0d00-b465-323a0a55bfcc",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5676360997560637,
			"y" : 0.5430783843663677,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.0,
				"y" : 0.4166666666666667,
				"text" : "DevOps"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "336ffe04-44b8-0d00-b467-b3270a55bfcc",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.5834777187402505,
			"y" : 0.3435673515981736,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 8.0,
				"y" : 0.16666666666666666,
				"text" : "Feature experimentation"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "ca20c722-44b8-0d00-b53c-15370a55bfcc",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.43389785647987017,
			"y" : 0.10057603624131949,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -6.083333333333333,
				"y" : -0.3333333333333333,
				"text" : "Fit for purpose system"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "feda24ff-43b8-0d00-b464-a4c30a55bfcc",
			"to" : "0371b1fd-43b8-0d00-b463-044e0a55bfcc",
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
			"from" : "11293400-44b8-0d00-b465-323a0a55bfcc",
			"to" : "0371b1fd-43b8-0d00-b463-044e0a55bfcc",
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
			"from" : "feda24ff-43b8-0d00-b464-a4c30a55bfcc",
			"to" : "11293400-44b8-0d00-b465-323a0a55bfcc",
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
			"from" : "11293400-44b8-0d00-b465-323a0a55bfcc",
			"to" : "336ffe04-44b8-0d00-b467-b3270a55bfcc",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "0371b1fd-43b8-0d00-b463-044e0a55bfcc",
			"to" : "ca20c722-44b8-0d00-b53c-15370a55bfcc",
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
			"from" : "336ffe04-44b8-0d00-b467-b3270a55bfcc",
			"to" : "ca20c722-44b8-0d00-b53c-15370a55bfcc",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false
		}
	]
}'
]

{ #category : #slides }
BATbern50Slideshow >> eniacManualTesting: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #eniacManualTesting:);
		newFadedText: 'Manual vs automated testing';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'eniac.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> executionGap: aSlide [
	"
	What to call this?
		The Execution gap?
		The Output gap?
		The Run time gap?
	"

	<gtSlide>
	^ aSlide paragraph
		priority: (self priorityFor: #executionGap:);
		subtitleWithFormat: (self asTitle: 'The Execution Gap');
		paragraphWithFormat: (self
				asBigText: '


From punch cards to live programming
')
]

{ #category : #accessing }
BATbern50Slideshow >> gtSlideWardleyMapsFor: aView [
	<gtView>
	^ self wardleyMaps isEmpty
		ifTrue: [ aView empty ]
		ifFalse: [ aView list
				priority: 45;
				title: 'Wardley maps';
				items: [ self wardleyMaps ];
				actionUpdateButton ]
]

{ #category : #slides }
BATbern50Slideshow >> houseDeployment: aSlide [
	"Original image https://www.coastalasbestosremoval.com.au/2019/06/25/asbestos-and-house-moving-an-ultimate-guide/"

	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #houseDeployment:);
		newFadedText: 'The gap from development to deployment';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'coastalasbestosremoval-vectorized.jpg' ]
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

{ #category : #slides }
BATbern50Slideshow >> ideGlorifiedTextEditor: aSlide [
	<gtSlide>
	<text: 'All mainstream IDEs are pretty much the same: they focus on editing source code. Why is this a problem?'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #ideGlorifiedTextEditor:);
		newFadedText: 'Mainstream IDEs are glorified text editors';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'intelliJ.jpg' ]
]

{ #category : #initialization }
BATbern50Slideshow >> initializeDb [
	db := nil.
	self db addPage: self wardleyMapsPage.
	self db addPage: self slideshowInspectionPage
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
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.2930984343923688,
			"y" : 0.7252334825476212,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.333333333333333,
				"y" : 2.0833333333333335,
				"text" : "Optical mark cards"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "88147c45-2eb8-0d00-8d26-58a30af31c02",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
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
				"red" : 0.5004887585532747
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
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
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
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
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
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "88147c45-2eb8-0d00-8d26-58a30af31c02",
			"to" : "07dcb970-2eb8-0d00-8dfb-efab0af31c02",
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
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "07dcb970-2eb8-0d00-8dfb-efab0af31c02",
			"to" : "fb6a3c23-2eb8-0d00-8c40-f6060af31c02",
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
		newFadedText: 'Closing the execution gap';
		element: [ self scaledWardleyMapForJson: self markCards2TerminalsJSON ]
]

{ #category : #slides }
BATbern50Slideshow >> modelingGap: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #modelingGap:);
		subtitleWithFormat: (self asTitle: 'The Modeling Gap');
		paragraphWithFormat:
				(self
						asBigText:
'

From data structures to objects
')
]

{ #category : #slides }
BATbern50Slideshow >> moldableDevelopmentMap: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #moldableDevelopmentMap:);
		newFadedText: 'Mapping moldable development';
		element: [ self scaledWardleyMapForJson: self moldableDevelopmentMapJSON ]
]

{ #category : #wardley }
BATbern50Slideshow >> moldableDevelopmentMapJSON [
	^ '{
	"nodes" : [
		{
			"id" : "1db0e27a-6a80-0d00-af4d-82110877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.37580092176258995,
			"y" : 0.0840559275136829,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.08333333333333333,
				"y" : -1.0833333333333333,
				"text" : "developers"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "56af4d7b-6a80-0d00-af4e-56010877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5083332367562812,
			"y" : 0.07830118890529421,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -0.9166666666666666,
				"text" : "business"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "afe4927b-6a80-0d00-af4f-68b10877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.42297099820143885,
			"y" : 0.20127285312573565,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 2.25,
				"y" : 2.25,
				"text" : "challenge"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "20293a7d-6a80-0d00-af50-6a320877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.3379945710837095,
			"y" : 0.32530106822727006,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.75,
				"y" : 1.5833333333333333,
				"text" : "specific problem"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "5b6ca17d-6a80-0d00-af51-10000877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6728264147123146,
			"y" : 0.1973697705797255,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.9166666666666666,
				"y" : -1.0833333333333333,
				"text" : "decision"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "f5f4e880-6a80-0d00-af52-aa280877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7837127275700204,
			"y" : 0.46079254973964345,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.333333333333333,
				"y" : 2.0833333333333335,
				"text" : "generated views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "b75d9681-6a80-0d00-af53-59810877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.716013517311151,
			"y" : 0.8666742184741348,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "moldable tools"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "b3a29b83-6a80-0d00-af54-522e0877cc58",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.3034088354316547,
			"y" : 0.4721604675991786,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.75,
				"y" : 2.25,
				"text" : "manual views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "f68dcc84-6a80-0d00-af55-59850877cc58",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.17110920638489208,
			"y" : 0.6305145941636838,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.3333333333333333,
				"y" : 2.4166666666666727,
				"text" : "manual inspection"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "ff86ec85-6a80-0d00-af56-535e0877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4101737191478624,
			"y" : 0.638887145805496,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -1.3333333333333333,
				"y" : 2.1666666666666665,
				"text" : "specific coding"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "9a2e5387-6a80-0d00-af57-76000877cc58",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.5369899392985612,
			"y" : 0.861929338530632,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "rigid tools"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "1db0e27a-6a80-0d00-af4d-82110877cc58",
			"to" : "afe4927b-6a80-0d00-af4f-68b10877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "afe4927b-6a80-0d00-af4f-68b10877cc58",
			"to" : "56af4d7b-6a80-0d00-af4e-56010877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "afe4927b-6a80-0d00-af4f-68b10877cc58",
			"to" : "20293a7d-6a80-0d00-af50-6a320877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "afe4927b-6a80-0d00-af4f-68b10877cc58",
			"to" : "5b6ca17d-6a80-0d00-af51-10000877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "20293a7d-6a80-0d00-af50-6a320877cc58",
			"to" : "5b6ca17d-6a80-0d00-af51-10000877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "5b6ca17d-6a80-0d00-af51-10000877cc58",
			"to" : "f5f4e880-6a80-0d00-af52-aa280877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "f5f4e880-6a80-0d00-af52-aa280877cc58",
			"to" : "b75d9681-6a80-0d00-af53-59810877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "b3a29b83-6a80-0d00-af54-522e0877cc58",
			"to" : "20293a7d-6a80-0d00-af50-6a320877cc58",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "f68dcc84-6a80-0d00-af55-59850877cc58",
			"to" : "b3a29b83-6a80-0d00-af54-522e0877cc58",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "20293a7d-6a80-0d00-af50-6a320877cc58",
			"to" : "ff86ec85-6a80-0d00-af56-535e0877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "ff86ec85-6a80-0d00-af56-535e0877cc58",
			"to" : "f5f4e880-6a80-0d00-af52-aa280877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "ff86ec85-6a80-0d00-af56-535e0877cc58",
			"to" : "b75d9681-6a80-0d00-af53-59810877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 2.0,
			"arrow" : false
		},
		{
			"from" : "b3a29b83-6a80-0d00-af54-522e0877cc58",
			"to" : "f5f4e880-6a80-0d00-af52-aa280877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 2.0,
			"arrow" : true
		},
		{
			"from" : "f68dcc84-6a80-0d00-af55-59850877cc58",
			"to" : "ff86ec85-6a80-0d00-af56-535e0877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 2.0,
			"arrow" : true
		},
		{
			"from" : "9a2e5387-6a80-0d00-af57-76000877cc58",
			"to" : "b75d9681-6a80-0d00-af53-59810877cc58",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 2.0,
			"arrow" : true
		},
		{
			"from" : "f68dcc84-6a80-0d00-af55-59850877cc58",
			"to" : "9a2e5387-6a80-0d00-af57-76000877cc58",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "b3a29b83-6a80-0d00-af54-522e0877cc58",
			"to" : "5b6ca17d-6a80-0d00-af51-10000877cc58",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"width" : 1.0,
			"arrow" : false
		}
	]
}'
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
		element: [ self scaledWardleyMapForJson: self oopMapJSON ]
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
BATbern50Slideshow >> productivityGap: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #productivityGap:);
		subtitleWithFormat: (self asTitle: 'The Productivity Gap');
		paragraphWithFormat:
				(self
						asBigText: 
'

From conception to realization
')
]

{ #category : #slides }
BATbern50Slideshow >> productivityMap: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #productivityMap:);
		newFadedText: 'Closing the productivity gap';
		element: [ self scaledWardleyMapForJson: self productivityMapJSON ]
]

{ #category : #wardley }
BATbern50Slideshow >> productivityMapJSON [
	^ '{
	"nodes" : [
		{
			"id" : "8d4c4380-6db8-0d00-aaec-a6f8088fcc19",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6168369401661076,
			"y" : 0.6320042906184693,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.666666666666667,
				"y" : -0.16666666666666666,
				"text" : "Design pattern"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "6a935081-6db8-0d00-aaed-1abd088fcc19",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.559045779312139,
			"y" : 0.38069215493927566,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.75,
				"y" : -0.16666666666666666,
				"text" : "Framework"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "dd8fb281-6db8-0d00-aaee-abf9088fcc19",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.30728511311268264,
			"y" : 0.422836547322096,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.666666666666667,
				"y" : 1.8333333333333333,
				"text" : "Custom architecture"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "53c86882-6db8-0d00-aaef-a8d6088fcc19",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.2938471751029986,
			"y" : 0.7047076621240175,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.083333333333333,
				"y" : 2.3333333333333335,
				"text" : "Custom design"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "d824a085-6db8-0d00-aaf1-c171088fcc19",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4005271297225408,
			"y" : 0.10551567646159649,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.833333333333333,
				"y" : 0.08333333333333333,
				"text" : "Application"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "894f518d-6db8-0d00-ab03-43d1088fcc19",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.5414297155945605,
			"y" : 0.17938130471103844,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.166666666666667,
				"y" : -0.08333333333333333,
				"text" : "Shared code base"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "53c86882-6db8-0d00-aaef-a8d6088fcc19",
			"to" : "8d4c4380-6db8-0d00-aaec-a6f8088fcc19",
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
			"from" : "dd8fb281-6db8-0d00-aaee-abf9088fcc19",
			"to" : "6a935081-6db8-0d00-aaed-1abd088fcc19",
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
			"from" : "d824a085-6db8-0d00-aaf1-c171088fcc19",
			"to" : "dd8fb281-6db8-0d00-aaee-abf9088fcc19",
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
			"from" : "dd8fb281-6db8-0d00-aaee-abf9088fcc19",
			"to" : "53c86882-6db8-0d00-aaef-a8d6088fcc19",
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
			"from" : "6a935081-6db8-0d00-aaed-1abd088fcc19",
			"to" : "8d4c4380-6db8-0d00-aaec-a6f8088fcc19",
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
			"from" : "d824a085-6db8-0d00-aaf1-c171088fcc19",
			"to" : "6a935081-6db8-0d00-aaed-1abd088fcc19",
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
			"from" : "6a935081-6db8-0d00-aaed-1abd088fcc19",
			"to" : "894f518d-6db8-0d00-ab03-43d1088fcc19",
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
			"from" : "d824a085-6db8-0d00-aaf1-c171088fcc19",
			"to" : "894f518d-6db8-0d00-ab03-43d1088fcc19",
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

{ #category : #slides }
BATbern50Slideshow >> qaToolsUnreliable: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #qaToolsUnreliable:);
		newFadedText: 'Q&A tools lack context, so give unreliable results';
		element: [ GtFileUtility imageElementFromFileReference: self pictures / 'so-chatGpt.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> readingDoesNotScale: aSlide [
	"https://streetlibrary.org.au/the-winner-of-the-2021-public-library-of-the-year-has-been-announced/library-libraries-feature-700x375-1-jpg-optimal/"

	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #readingDoesNotScale:);
		newFadedText: 'Reading code does not scale';
		element: [ GtFileUtility imageElementFromFileReference: self pictures / 'library.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> scaledWardleyMapForJson: aJSON [
	^ ((GtWardleyMapSlide new json: aJSON) asElement size: 600 @ 400)
		asScalableElement
]

{ #category : #accessing }
BATbern50Slideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		titleSlide:
		
		#executionGap:
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
				productivityGap:
			softwareProductivity:
			designPatternsFrameworks:
			"
			What is productivity?
			What is the gap?
			Example: design patterns
			Example: Frameworks & SPLs
			Open issues.
			"
			productivityMap:

		testingGap:
			eniacManualTesting:
			testingMap:

		deploymentGap:
			houseDeployment:
			devOpsMap:
		

		sustainabilityGap:
			ideGlorifiedTextEditor:
			readingDoesNotScale:
			codeDisconnected:
			qaToolsUnreliable:
			"
			Q&A tools are unreliable
			Mainstream IDEs are glorified text editors
			Plugins are  hard to find, hard to build, and hard to compose
			"
			
			slideshowInspection:
		
			moldableDevelopmentMap:

			
		)
]

{ #category : #slides }
BATbern50Slideshow >> slideshowInspection: aSlide [
	<gtSlide>
		^ aSlide lepiterPage
		priority: (self priorityFor: #slideshowInspection:);
		startPage: (self db pageNamed: 'Inspecting the slideshow')
]

{ #category : #pages }
BATbern50Slideshow >> slideshowInspectionPage [
	<gtExample>
	^ (LePage named: 'Inspecting the slideshow')
		addSnippet: (LeTextSnippet new
				string: 'We can embed an explorable instance of the slideshow within a notebook page.';
				yourself);
		addSnippet: (LeExampleSnippet new
				exampleBehaviorName: #BATbern50Slideshow;
				exampleSelector: #batBern50Slideshow;
				noCode: true;
				previewHeight: 700);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #slides }
BATbern50Slideshow >> softwareProductivity: aSlide [
	"Margaret Hamilton, NASA's lead software engineer for the Apollo Program, stands next to the code she wrote by hand that took Humanity to the moon in 1969.
	https://en.wikipedia.org/wiki/File:Margaret_Hamilton_-_restoration.jpg"

	<gtSlide>
	<text: 'Software productivity isn''t just producing more code in the same amount of time.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #softwareProductivity:);
		newFadedText: 'What is Software Productivity?';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'margaretHamiltonApolloCode.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> sustainabilityGap: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #sustainabilityGap:);
		subtitleWithFormat: (self asTitle: 'The Sustainability Gap');
		paragraphWithFormat:
				(self
						asBigText: 
'

From static code to explainable systems 
')
]

{ #category : #slides }
BATbern50Slideshow >> testingGap: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #testingGap:);
		subtitleWithFormat: (self asTitle: 'The Testing Gap');
		paragraphWithFormat:
				(self
						asBigText: 
'


From manual to automated testing
')
]

{ #category : #slides }
BATbern50Slideshow >> testingMap: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #testingMap:);
		newFadedText: 'From manual to automated testing';
		element: [ self scaledWardleyMapForJson: self testingMapJSON ]
]

{ #category : #wardley }
BATbern50Slideshow >> testingMapJSON [
	^ '{
	"nodes" : [
		{
			"id" : "664dfcac-32b8-0d00-8f9e-ab290ce43fd4",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.29221388375660057,
			"y" : 0.7037096128817586,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "Manual tests"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "ee9560ad-32b8-0d00-8fcd-a7e20ce43fd4",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.579189719695904,
			"y" : 0.6833967126290046,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "Automated tests"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "8aeea9ae-32b8-0d00-9086-beb60ce43fd4",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.8087029003590649,
			"y" : 0.6716682563501506,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "Generated tests"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "80d569af-32b8-0d00-90e3-6e050ce43fd4",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.3889001445882683,
			"y" : 0.3426683923552483,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -2.9166666666666665,
				"y" : 0.4166666666666667,
				"text" : "Testing"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "938408b3-32b8-0d00-93f2-8d700ce43fd4",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.5894213118686346,
			"y" : 0.2972209838293268,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 8.416666666666666,
				"y" : 0.5,
				"text" : "Refactoring and redesign"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "09052f1a-44b8-0d00-b525-22cf0a55bfcc",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4182211901032604,
			"y" : 0.15572500755384813,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.833333333333333,
				"y" : 0.25,
				"text" : "Validated system"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "664dfcac-32b8-0d00-8f9e-ab290ce43fd4",
			"to" : "80d569af-32b8-0d00-90e3-6e050ce43fd4",
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
			"from" : "ee9560ad-32b8-0d00-8fcd-a7e20ce43fd4",
			"to" : "80d569af-32b8-0d00-90e3-6e050ce43fd4",
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
			"from" : "8aeea9ae-32b8-0d00-9086-beb60ce43fd4",
			"to" : "80d569af-32b8-0d00-90e3-6e050ce43fd4",
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
			"from" : "664dfcac-32b8-0d00-8f9e-ab290ce43fd4",
			"to" : "ee9560ad-32b8-0d00-8fcd-a7e20ce43fd4",
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
			"from" : "ee9560ad-32b8-0d00-8fcd-a7e20ce43fd4",
			"to" : "8aeea9ae-32b8-0d00-9086-beb60ce43fd4",
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
			"from" : "ee9560ad-32b8-0d00-8fcd-a7e20ce43fd4",
			"to" : "938408b3-32b8-0d00-93f2-8d700ce43fd4",
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
			"from" : "80d569af-32b8-0d00-90e3-6e050ce43fd4",
			"to" : "09052f1a-44b8-0d00-b525-22cf0a55bfcc",
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
			"from" : "938408b3-32b8-0d00-93f2-8d700ce43fd4",
			"to" : "09052f1a-44b8-0d00-b525-22cf0a55bfcc",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false
		}
	]
}'
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
	<text: 'TODO: add some draft text to each slide.'>
	^ aSlide titleWithFooter
		priority: (self priorityFor: #titleSlide:);
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Mind the gap');
		subtitleWithFormat: (self asTitle: '50 years of shortening feedback loops');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]

{ #category : #accessing }
BATbern50Slideshow >> wardleyMaps [
	^ self wardleyMapsPage children
		select: [ :each | each isKindOf: LeWardleyMapSnippet ]
]

{ #category : #pages }
BATbern50Slideshow >> wardleyMapsPage [
	"Build a page containing all the wardley maps from a list of associations. They key is the method returning the JSON of the map and the value is the preceding text to display."

	<gtExample>
	| page |
	page := LePage named: 'Wardley maps'.
	{
		#markCards2TerminalsJSON -> '# Closing the realization gap'.
		#oopMapJSON -> '# Closing the modeling gap'.
		#testingMapJSON -> '# From manual to automated testing'.
		#devOpsMapJSON -> '# Closing the deployment gap'.
		#productivityMapJSON -> '# Closing the productivity gap'.
		#moldableDevelopmentMapJSON -> '# Mapping moldable development'
	}
		do: [ :assoc | 
			page
				addSnippet: (LeTextSnippet new
						string: assoc value;
						yourself).
			page
				addSnippet: (LeWardleyMapSnippet new
						wardleyMap: (GtWardleyMapFromDictionaryImporter new
								importWardleyMapFrom: (STONJSON fromString: (self perform: assoc key)))) ].

	^ page
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
