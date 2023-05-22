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
	<text: '## APL — my first programming experience

You might be surprised to learn that my first programming experience was with APL, a live programming language for manipulating matrices and arrays. We programmed interactively on a timesharing system, getting immediate feedback.

APL is facetiously known as a “write-only” language, due to its highly compact notation using Greek letters as array manipulation operators. In the slide we a see a one-line APL program to generate prime numbers.'>
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

{ #category : #slides }
BATbern50Slideshow >> conclusion: aSlide [
	<gtSlide>
	<text: 
'For systems to be explainable, they must be explorable.
Start exploring (and developing) from objects, not code.
Effective decision making requires tools that are custom-built, cheap and composable.
A moldable development environment supports decision-making not only for developers but also for business stakeholders.
'>
	^ aSlide paragraph
		priority: (self priorityFor: #conclusion:);
		subtitleWithFormat: (self asTitle: 'Conclusions');
		paragraphWithFormat: (self
				asBigText: '

Explainable systems must be explorable.
Decision-making tools must be custom-built, cheap and composable.
Explainable systems are not just for developers.
')
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
	<text: '## Design Patterns, Components, Frameworks

In the 1990s, the mantra was “Objects are not enough”. But if so, what else was needed?

This photo shows Ralph Johnson, Erich Gamma,  Richard Helm and John Vlissides, the “Gang of Four” who produced the first “Design Patterns” book. But all four were also experienced in developing object-oriented frameworks based on resuable architectures and software components. They noticed that the same design ideas appeared in all the systems they had developed independently, and  figured something interesting was going on.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #designPatternsFrameworks:);
		newFadedText: 'Design Patterns, Components, Frameworks';
		element: [ GtFileUtility imageElementFromFileReference: self pictures / 'gangOfFour.jpg' ]
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
	<text: '## Manual vs automated testing

This great photo shows the ENIAC, one of the very first digital computers, completed in 1945. As you can imagine, testing was a slow, laborious process of rewiring.

Automated testing only started to become popular with the introduction of Kent Beck''s SUnit framework, and the subsequent port of SUnit by Kent and Erich Gamma to Java.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #eniacManualTesting:);
		newFadedText: 'Manual vs automated testing';
		element: [ GtFileUtility imageElementFromFileReference: self pictures / 'eniac.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> executionGap: aSlide [
	<gtSlide>
	<text: '# The Execution gap

My first experience with the gaps in Software Engineering between expectations and reality was in 1972 when I  started to learn to program.
In this case the gap was simply the time between designing a program and actually seeing it run.

I was a tenth-grade high-school student in Toronto when I was invited to the University of Waterloo for a week of Mathematics and a bit of programming.'>
	^ aSlide paragraph
		priority: (self priorityFor: #executionGap:);
		subtitleWithFormat: (self asTitle: 'The Execution Gap');
		paragraphWithFormat: (self
				asBigText: '


From punch cards to live programming
')
]

{ #category : #slides }
BATbern50Slideshow >> exploringGitRepo: aSlide [
	<gtSlide>
	<text: '## Exploring a git repository
'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #exploringGitRepo:);
		startPage: (self db pageNamed: 'Exploring a git repository')
]

{ #category : #pages }
BATbern50Slideshow >> exploringGitRepoPage [
	<gtExample>
	^ (LePage named: 'Exploring a git repository')
		addSnippet: (LeTextSnippet new
				string: 'We can similarly explore the git repository of this project.';
				yourself);
		addSnippet: (LeElementSnippet new
				code: 'GtInspector newOn: BATbern50Slideshow package repository';
				codeVisible: false;
				elementHeight: 600;
				yourself);
		yourself
]

{ #category : #slides }
BATbern50Slideshow >> exploringSlideshow: aSlide [
	<gtSlide>
	<text: '## Exploring the slideshow
For a software system to be explainable, we must be able to explore it.
To understand the slideshow software, we don''t start from the source code but from a live instance.
We can navigate from the slideshow to its slides, to the Wardley maps, or to the source code, if we need to.
'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #exploringSlideshow:);
		startPage: (self db pageNamed: 'Exploring the slideshow')
]

{ #category : #pages }
BATbern50Slideshow >> exploringSlideshowPage [
	<gtExample>
	^ (LePage named: 'Exploring the slideshow')
		addSnippet: (LeTextSnippet new
				string: 'To understand this slideshow, we start by exploring an instance.';
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
BATbern50Slideshow >> gtExtensions: aSlide [
	<gtSlide>
	<text: '## GT tool extensions
All the views we have seen are examples of custom tools added to a moldable IDE.
In addition to custom views, there are several other ways the IDE can be molded such as by adding custom actions, search capabilities, and quality advices.
The Metrics view shows that these extensions are generally small and cheap to implement.
'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #gtExtensions:);
		startPage: (self db pageNamed: 'GT tool extensions')
]

{ #category : #pages }
BATbern50Slideshow >> gtExtensionsPage [
	<gtExample>
	^ (LePage named: 'GT tool extensions')
		addSnippet: (LeTextSnippet new
				string: 'These are the extension (tools) in the current platform.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'The *Metrics* view shows how cheap they are.';
				yourself);
		addSnippet: (LeExampleSnippet new
				exampleBehaviorName: #'GtImage class';
				exampleSelector: #instance;
				noCode: true;
				previewShowSelector: #gtExensionsFor:;
				previewHeight: 300);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #accessing }
BATbern50Slideshow >> gtSlideDeckFor: aView [
	"Eventually push this method up."
	<gtView>
	^ aView forward
		title: 'Slide deck';
		priority: 60;
		object: [ self slideDeckPage asContentUIModel ];
		view: #gtLiveFor:;
		actionUpdateButton
]

{ #category : #accessing }
BATbern50Slideshow >> gtSlideWardleyMapsFor: aView [
	"Eventually push this method up."
	<gtView>
	^ self wardleyMaps isEmpty
		ifTrue: [ aView empty ]
		ifFalse: [ aView list
				priority: 90;
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
	<text: '## The IBM 2741 terminal

The so-called typewriter was actually an IBM 2741 used to program in APL.
It is exactly the terminal I first used in 1972, including the APL typeball with Greek characters. I somehow doubt it was used to type letters in a kitchen in Iceland.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #ibm2741:);
		newFadedText: 'The IBM 2741';
		element: [ GtFileUtility imageElementFromFileReference: self pictures / 'ibm2741.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> ibmOpticalCard: aSlide [
	<gtSlide>
	<text: '## Programming FORTRAN on optical mark cards

In the Autumn of 1972, the Toronto Board of Education introduced the first high school computer programming courses. We coded our programs with pencil on optical cards, like the one you see. We handed our decks to the teacher, and got our printed output three days later. Debugging was nota pleasant experience. After my first experience with interactive APL, I felt I had moved back decades.

Later in the semster one of my classmates discovered that anyone at all could walk in off the street and use the keypunches and the high-speed job stream at the University of Toronto. After that we did all our homework at UofT.'>
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
	self db addPage: self exploringSlideshowPage.
	self db addPage: self exploringGitRepoPage.
	self db addPage: self moldingIDEPage.
	self db addPage: self gtExtensionsPage
]

{ #category : #slides }
BATbern50Slideshow >> lifewareTesting: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #lifewareTesting:);
		newFadedText: 'Lifeware test running and exploration';
		element: [ self placeholder ]
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
	<text: '## Closing the execution gap

In this slide we see a “Wardley map”, a diagram for business strategy that maps components with respect to user need. At the top we see the need for getting our programs running.

The other nodes are components that contribute to that need. From bottom to top components provide more value to the user, and from left to right they evolve prototypes all the way to commodities.

In this case we see that opticalmark cards evolve to punch cards to interactive terminals, shortening the feedback loop. Similarly gettin the program to run evolves from sending it by courier to just hitting the execute key.

What''s interesting is that when the tchnology is sufficiently evolved, new opportunities arise that could not be imagined before. In this case, since the feedback loop is so short with live programming, we can experiment in ways that were not possible before.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #markCardsMap:);
		newFadedText: 'Closing the execution gap';
		element: [ self scaledWardleyMapForJson: self markCards2TerminalsJSON ]
]

{ #category : #slides }
BATbern50Slideshow >> modelingGap: aSlide [
	<gtSlide>
	<text: '# The Modeling gap

After high school, I studied Mathematics at Waterloo, and then switched to Computer Science at UofT. There I experienced the enormous gap between conceptual models and implementation.'>
	^ aSlide paragraph
		priority: (self priorityFor: #modelingGap:);
		subtitleWithFormat: (self asTitle: 'The Modeling Gap');
		paragraphWithFormat: (self
				asBigText: '

From data structures to objects
')
]

{ #category : #slides }
BATbern50Slideshow >> moldableDevelopment: aSlide [
	<gtSlide>
	<text: '# Moldable development
For a software systems to be explainable, it must first of all be *explorable*.
The IDE is more than a text editor.
Instead of starting to explore a system from source code, we can start from a live object and navigate from there.
Second, we must be able to answer questions relevant to our *context*.
Instead of using off-the-shelf tools or plugins, we use cheap and composable tools specific to our domain.
'>
	^ aSlide paragraph
		priority: (self priorityFor: #moldableDevelopment:);
		subtitleWithFormat: (self asTitle: 'Moldable development');
		paragraphWithFormat: (self
				asBigText: '

From static code to explainable systems
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
BATbern50Slideshow >> moldingIDE: aSlide [
	<gtSlide>
	<text: '## Molding the IDE
To make systems explainable, you need to be able to add cheap, composable tools (view).
'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #moldingIDE:);
		startPage: (self db pageNamed: 'Molding the IDE')
]

{ #category : #pages }
BATbern50Slideshow >> moldingIDEPage [
	<gtExample>
	^ (LePage named: 'Molding the IDE')
		addSnippet: (LeTextSnippet new
				string: 'Each view is a cheap, composable tool. (ALT-click to explore the code.)';
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
BATbern50Slideshow >> oopEarlyHistory: aSlide [
	<gtSlide>
	<text: '## A brief early history of OOP

I had an epiphany in August 1981 when I saw the issue of Byte magazine dedicated to Smalltalk, a brand-new object-oriented language and system. Object-oriented programming was born in Norway, where Ole-Johan Dahl and Kristen Nygaard struggled to implement simulation software using ALGOL, a procedural language. They invented objects, classes and inheritance to model real-world simulations as a thin layer on top of ALGOL. Roughly 20 years later Bjarne Stroustrup, an experienced Simula programmer, started adding a similar thin layer to C.

Also during the 1960s, an American computer scientist, Alan Kay, noticed that computer hardware was getting smaller and faster at an astonishing rate. He predicted that, somewhere down the line, you would be able to hold a computer in your hand, providing access to an encyclopedia of multimedia data. He figured that it would only be possible to build the software for such a so-called “Dynabook” using a fully object-oriented language and system.

He convinced Xerox PARC to fund the development of not just the language, but the entire system down to the metal. The Smalltalk team indeed built not only the Smalltalk language and VM technology, but also the first graphical workstations and windowing systems.

I read about this and told my supervisor that to build our advanced electronic office systems we needed an object-oriented language. Since Smalltalk wasn''t available for our hardware, we started research into building our own language and system.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #oopEarlyHistory:);
		newFadedText: 'A brief early history of OOP';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'oopEarlyHistory.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> oopMap: aSlide [
	<gtSlide>
<text: 
'## Closing the modeling gap

Object-oriented programming made it possible to trace concepts from requirements through design down to implementation. This certainly made it easier to develop software systems, but what is interesting is that this enabled long-term growth. Not only development, but maintenance and evolution of such systems was facilitated by making it easier to navigate from requirements to code.

For early adopters of OO technology in the 1980s, this resulted in large, legacy OO systems by the mid 1990s.'>
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
				"x" : -5.833333333333333,
				"y" : 0.5,
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
			"x" : 0.3058995984544152,
			"y" : 0.598904432274602,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.583333333333333,
				"y" : 0.4166666666666667,
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
			"x" : 0.5357879472892858,
			"y" : 0.4842681872638353,
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
			"y" : 0.35663837581737795,
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
			"x" : 0.32638675429697867,
			"y" : 0.42990376571404654,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.75,
				"y" : 0.08333333333333333,
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
			"x" : 0.4880055389857494,
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
			"x" : 0.35593439655881937,
			"y" : 0.2773235133464627,
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
			"x" : 0.5957358739038179,
			"y" : 0.2266257471640773,
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
		},
		{
			"id" : "e9aaaf5d-aeb8-0d00-a4cb-ac560fd96f93",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"x" : 0.573032455956376,
			"y" : 0.13118560948119637,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.666666666666667,
				"y" : 0.3333333333333333,
				"text" : "Long-term growth"
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
		},
		{
			"from" : "4afee69a-31b8-0d00-bc01-925a0c124378",
			"to" : "e9aaaf5d-aeb8-0d00-a4cb-ac560fd96f93",
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
			"from" : "e9aaaf5d-aeb8-0d00-a4cb-ac560fd96f93",
			"to" : "62cbe291-31b8-0d00-bbfe-d0560c124378",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
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
			"from" : "42dfe198-31b8-0d00-bc00-e3760c124378",
			"to" : "3a79df84-31b8-0d00-bbf6-f9080c124378",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
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
BATbern50Slideshow >> placeholder [
	^ GtFileUtility
		imageElementFromFileReference: self pictures / 'placeholder.png'
]

{ #category : #slides }
BATbern50Slideshow >> plugins: aSlide [
	"https://www.flickr.com/photos/30478819@N08/50456554376/in/photostream/"
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #plugins:);
		newFadedText: 'Plugins are  hard to find, hard to build, and hard to compose';
		element: [ GtFileUtility imageElementFromFileReference: self pictures / 'adapters.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> productivityGap: aSlide [
	<gtSlide>
<text: 
'# The Productivity Gap

Whereas in the 1980s most of the resistence to OO technology came from concerns about performance (after all, every message to an object entails at least one additional indirection), by the 1990s machines were fast enough that developer productivity was seen as being more important.

But what is “productivity”?'>
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
	<text: '## Closing the productivity gap

Design patterns are valuable not only as a way to teach software developers about best practices, but they also offer a way to raise conversations about design to higher levels. If I say to you “do we need a Singleton here”, you should immediately udnerstand what''s at stake.

Frameworks and components also raise the level of conversation. Instead of dealing with many unconnected applications, we deal with a Software Product Line of applications sharing a common code base.'>
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

{ #category : #utility }
BATbern50Slideshow >> refreshSlideDeckPage [
	"Remove the page if it exists, and recreate it from scratch."

	| page |
	page := self db ensurePageNamed: self class name.
	self db removePage: page.
	page := self db ensurePageNamed: self class name.
	self slideDictionary
		do: [ :assoc | 
			| text |
			text := assoc value pragmas
					detect: [ :p | p selector = #text: ]
					ifFound: [ :pragma | pragma arguments first ]
					ifNone: [ '' ].
			((String cr repeat: 2) split: text)
				do: [ :each | 
					page
						addSnippet: (LeTextSnippet new
								string: each;
								yourself) ].
			page
				addSnippet: (LeElementSnippet new
						code: 'BATbern50Slideshow new slideFor: ' , assoc value selector printString;
						elementHeight: 400;
						codeVisible: false;
						yourself) ].
	^ page
]

{ #category : #accessing }
BATbern50Slideshow >> scalableSlide: aSlide [
	| scalableSlide |
	scalableSlide := GtProtoLiveSlide new element
			element: [ (aSlide asElement size: 1200 @ 900) asScalableElement ].
	^ scalableSlide
]

{ #category : #slides }
BATbern50Slideshow >> scaledWardleyMapForJson: aJSON [
	^ ((GtWardleyMapSlide new json: aJSON) asElement size: 600 @ 400)
		asScalableElement
]

{ #category : #utility }
BATbern50Slideshow >> slideDeckPage [
	^ self db pageNamed: self class name ifAbsent: [ self refreshSlideDeckPage ]
]

{ #category : #accessing }
BATbern50Slideshow >> slideDictionary [
	"TODO: Wrap each slide as a scalable"

	| dict scalableDict |
	dict := super slideDictionary.
	scalableDict := OrderedDictionary new.
	dict
		keysAndValuesDo: [ :aSlide :aMethod | 
			| scalableSlide |
			scalableSlide := self scalableSlide: aSlide.
			scalableDict at: scalableSlide put: aMethod ].
	^ scalableDict
]

{ #category : #accessing }
BATbern50Slideshow >> slideFor: selector [
	^ self
		scalableSlide: (self perform: selector withArguments: {GtProtoLiveSlide new})
]

{ #category : #accessing }
BATbern50Slideshow >> slidePriorities [
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
			plugins:

		moldableDevelopment:
			exploringSlideshow:
			exploringGitRepo:
			moldingIDE:
			gtExtensions:
									lifewareTesting: "*** TO DO"
			moldableDevelopmentMap:

		conclusion:
			
		)
]

{ #category : #slides }
BATbern50Slideshow >> softwareProductivity: aSlide [
	"Margaret Hamilton, NASA's lead software engineer for the Apollo Program, stands next to the code she wrote by hand that took Humanity to the moon in 1969.
	https://en.wikipedia.org/wiki/File:Margaret_Hamilton_-_restoration.jpg"

	<gtSlide>
	<text: '## What is Software Productivity?

This great photo shows Margaret Hamilton, NASA''s lead software engineer for the Apollo Program, standing next to printouts of all the code produced by her team for the 1969 moon landing.

But software productivity clearly isn''t just producing more code in the same amount of time, otherwise refactoring would be seen as negative productivity! The trick is to produce more value for the customer, whetherthis is more code or less.'>
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

As software systems grow, they become harder to understand and maintain
')
]

{ #category : #slides }
BATbern50Slideshow >> testingGap: aSlide [
	<gtSlide>
<text: 
'# The Testing Gap

Once upon a time (and also today), testing was a manual process.'>
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
	<text: '## From manual to automated testing

The transition from manual to automated testing not only shortened the feedback loop from coding to validating that predefined test cases would pass, but it enabled something new.

With high test coverage, it was now possible to introduce radical changes to the design of a software system, and to subsequently ensure that everything that worked before was still working.

The obvious downside was the need to manually write the test cases. In any case, you only had to write an automated test once, whereas a manual test had to be evaluated each time by hand.

The open question is where we can go with automated tests. So far all these can do is identify cases where the system fails. They cannot test business logic.'>
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
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
	<text: '## Building the Electronic Office (1980)

The task for my MSc project was, together with another Masters student, to build a workflow system on top of another prototype of an electronic Office Forms System. OFS was itself built as a layer on top of MRS, the Micro-Relational System, one of the first implementations of a relation database management system for Unix.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #theElectronicOffice:);
		newFadedText: 'Building the Electronic Office (1980)';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'theElectronicOffice.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> theTypist: aSlide [
	<gtSlide>
	<text: '## The typist at the kitchen table

As an amusing parenthesis, I saw this displayed in the Open Air museum in Reykjavik in 2015. It looks fine, except the “typewriter” was not a typewriter at all.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #theTypist:);
		newFadedText: 'The typist at the kitchen table?';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'reykjavikMuseumTheTypist.jpg' ]
]

{ #category : #slides }
BATbern50Slideshow >> titleSlide: aSlide [
	<gtSlide>
	<text: '# Mind the gap — 50 years of shortening feedback loops

Hi. My name is Oscar Nierstrasz.

I was a professor of Software Engineering at the University of Bern from 1994 until I retired at the end of 2021, and since then have been working for feenk, a small consulting company in Wabern that was founded by a former student of mine.

Today, on the occasion of the 50th Berner Architekten Treffen I''d like to tell you a few stories over the roughly 50 years since I started programming, and reflect on how numerous advances in improving feedback loops in software processes have led to some interesting and sometimes suprising opportunities.'>
	^ aSlide titleWithFooter
		priority: (self priorityFor: #titleSlide:);
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Mind the gap');
		subtitleWithFormat: (self asSubtitle: '50 years of shortening feedback loops');
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
	"https://www.jackson-pollock.org/convergence.jsp"

	<gtSlide>
	<text: '## Where are the Objects?

I was very excited about the project, and had a clear idea of what to do, before even looking at the code. When I opened the box, however, I had trouble mapping the concepts to the C code.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #whereAreTheObjects:);
		newFadedText: 'Where are the Objects?';
		element: [ GtFileUtility
				imageElementFromFileReference: self pictures / 'whereAreTheObjects.jpg' ]
]
