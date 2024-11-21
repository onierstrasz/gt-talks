Class {
	#name : #Monash2024,
	#superclass : #PrioritySlideshow,
	#classInstVars : [
		'cardDemoModel'
	],
	#category : #'GtTalksMonash-Slideshow'
}

{ #category : #accessing }
Monash2024 class >> cardDemoModel [
	cardDemoModel
		ifNil: [ AWSCardDemo
				model: (GtCobolImporter new
						copyBookDirectories: {AWSCardDemo rootDirectory / 'app/cpy'.
								AWSCardDemo rootDirectory / 'app/cpy-bms'};
						importDirectory: AWSCardDemo rootDirectory;
						model).
			cardDemoModel := AWSCardDemo model ].
	^ cardDemoModel
]

{ #category : #slides }
Monash2024 >> blueSkyExplorer: aSlide [
	<gtSlide>
	<text:
'TODO

# Exploring BlueSky via the AT protocol

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Exploring BlueSky via the AT protocol');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
Monash2024 >> blueSkyUser: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Inspecting a BlueSky user';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: BlueskyDemo new actor))
				maximized ]
]

{ #category : #slides }
Monash2024 >> cardDemo: aSlide [
	<gtSlide>
	<text:
'## The wrapped CardDemo

From a bitmap we can navigate to its source code, and to the dependency map of programs and screens. We can also navigate from source to other source code.

'>
<demo:
'- Inspect `All BMS Maps`
- Click on the first screen (just to the left of the screen itself)
- Go to the `Programs & screen view to see the screen hierarchy
- Go to the first program
- Inspect the variables
- See the Overlapping view '>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'AWS CardDemo';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: self cardDemoModel))
				maximized ]
]

{ #category : #slides }
Monash2024 >> cardDemoExample: aSlide [
	<gtSlide>
	<text:
'# Example: Exploring the COBOL CardDemo

The AWS CardDemo is an open source COBOL mainframe application that is available for exploring and testing various kinds of legacy modernization technologies.

[blog url](https://aws.amazon.com/blogs/opensource/introducing-open-source-aws-carddemo-for-mainframe-modernization/)'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The AWS CardDemo');
		paragraphWithFormat: (self
				asText: 
'
is an open source COBOL application for testing legacy mainframe modernization technology.')
]

{ #category : #slides }
Monash2024 >> cardDemoFiles: aSlide [
	<gtSlide>
	<text:
'## The raw CardDemo files


We can see the source files and screens, but how are they related?'>
<demo:
'- Browse the `app/cbl` and `diagrams` folders
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The raw CardDemo files';
		element: [ (GtPager
				createWrappedOn: (self cardDemoModel gtRootFolderFor: GtPhlowProtoView new))
				maximized ]
]

{ #category : #accessing }
Monash2024 >> cardDemoModel [
	"Cache it once on the class side"

	^ self class cardDemoModel
]

{ #category : #slides }
Monash2024 >> explainableLudo: aSlide [
	<gtSlide>
	<text:
'## Explainable Ludo

Here we see an object inspector on a live instance of the Ludo game we saw earlier. The difference is that in addition to interacting with it, we can also explore it to understand how it works.

The usual inspector view of objects is the *Raw* view which only shows the state of the object''s instance variables. Instead we have molded the inspector to show us several custom views that explain various aspects of the game.

We can see the state of the Players, the individual Squares, and the history of the Moves.

We can furthermore dive into a particular move, and see further custom views that explain what happened. We can even step through the moves to obtain a kind of animation of the history of the game.

Each custom tool consists of a short method that informs the inspector, or another IDE tool of the extension.'>
<demo: 
'- Show the Raw view
- Show the views one by one
- Dive into the moves
- Step through the moves
- Show the code of the Moves custom view
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'An explainable Ludo game';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: GtLudoRecordingGameExamples new gameShowingAllMoves6))
				maximized ]
]

{ #category : #slides }
Monash2024 >> explainableSystems: aSlide [
	<gtSlide>
	<text: 
'# Explainable Systems

The opposite of an explainable system is an *opaque* one, which makes it hard for you to answer questions about how it works.'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'What are Explainable Systems?');
		paragraphWithFormat: (self
				asText: '

') , (self asText: 'Opaque systems') italic
				, (self asText: ' make it hard for you to understand
how they work.


'), (self asText: 'Explainable systems') italic, (self asText: ' expose their inner workings
so that you can have a conversation with them.')
]

{ #category : #page }
Monash2024 >> githubDemoPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'GitHub REST API demo')
	addSnippet: (LeTextSnippet new
			string: 'First we explore the URL string.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'url := ''https://api.github.com/orgs/feenkcom''.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'We learn how to extract the JSON dictionary and wrap it as an object.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'We find some interesting views and  lift them to the wrapped object.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'We continue to explore, e.g., the list of repositories, and wrap those, also giving them views.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	yourself
]

{ #category : #slides }
Monash2024 >> githubExample: aSlide [
	<gtSlide>
	<text:
'# Example: Exploring the GitHub REST API

The GitHub REST API provides information about organizations, user and repositories in the form of JSON data.
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The GitHub REST API');
		paragraphWithFormat: (self
				asText: 
'
serves information in the form of JSON data.
')
]

{ #category : #slides }
Monash2024 >> githubFeenkOrgJSon: aSlide [
	<gtSlide>
	<text:
'## Raw JSON data of the feenk GitHub organization

Here we see the raw JSON data of the feenk organization. It exposes a number of domain concepts, but not in a way that is easy to navigate or understand.
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Raw JSON data of the feenk GitHub organization';
		element: [ (GtPager
				createWrappedOn: (PatternScripterExamples new prettyJsonGitHubDictionary
						gtJSONFor: GtPhlowProtoView new)) maximized ]
]

{ #category : #slides }
Monash2024 >> githubFeenkOrgWrapped: aSlide [
	<gtSlide>
	<text:
'## The feenk GitHub organization JSON as a wrapped, moldable  object

After a few iterations we enrich the GitHub organization model with several more entities and views, according to whatever interests us.
'>
<demo:
'Browse the model ...'
>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The feenk GitHub organization JSON as a wrapped, moldable  object';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: PatternScripterExamples new wrappedGitHubOrganization))
				maximized ]
]

{ #category : #page }
Monash2024 >> githubOrgDemoPage: aSlide [
	<gtSlide>
	<text:
'## GitHub REST API demo

We demo how  to apply moldable development in exploring the GitHub REST API.

First we explore the URL string to see how we can retrieve the contents. We extract the JSON string, find out haw to parse it, and retrieve a dictionary of values.

Now to explore further we turn this into a domain object representing a GitHub Organization. If we explore the basic raw view we can find the underlying data. We lift the dictionary view to make it available to our domain object as a view.

One interesting piece of data is the `repos_url`. We see it returns an array of JSONs, one for each repository. We extract this as a method.

We wrap each of the repo JSON dictionaries as a Repo object. We fix the default printString to show the name of the repo.

We generate a JSON dictionary view directly from the raw data of the repo.

We generate a repos view from the list of repos that now shows the proper repo names.

Now we can nicely navigate from the organization to each repository.
'>
<demo:
'- Inspect the URL
- View the contents
- See how to get the contents, and add a snippet to extract this
- See how to get the JSON data, and add a snippet
- Wrap the dictionary as an Org object
- Inspect the Org instance and navigate to the JSON view of the data
- Lift the view to the org
- Inspect the repos_url
- Extract the array of JSONs
- Wrap them as Repo objects and cache them in a repos slot
- Give them a printString so they display nicely
- Add JSON views to the Repo objects and continue
'>
		^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'GitHub REST API demo')
]

{ #category : #slides }
Monash2024 >> gtBookLinksMondrian: aSlide [
	<gtSlide>
	<text:
'TODO

Visualization of the pages in the book itself that are reachable 
by following links contrasted with standalone pages.

NB example of a Throwaway Analysis Tool
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A Mondrian reachability graph of pages in the GT book';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: PatternScripterExamples new gtBookLinksMondrian))
				maximized ]
]

{ #category : #slides }
Monash2024 >> gtToolingTreemap: aSlide [
	<gtSlide>
	<text:
'
TODO

... Custom tools are pervasive

This visualization shows a treemap of packages and classes in the current image.

Blue classes have at least one custom view and green ones have at least one example. This shows that custom tools were  heavily used to build the moldable development environment itself.

Here at the top left we see `BlElement`, the root of the graphical hierarchy.'>
<demo: '- Click on the top-left class (BlElement)'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A Treemap of packages with custom views and examples';
		element: [ (GtPager createWrappedOn: GtTour new treemapWithViewsAndExamples) maximized ]
]

{ #category : #slides }
Monash2024 >> gtTools: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder

Show  examples of each

Moldable IDE tools
Language Workbenches
Visualization tools
	Bloc
	Mondrian
	Scripter etc

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
Monash2024 >> lexiconExample: aSlide [
	<gtSlide>
	<text:
'TODO

# A lexicon file

'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A lexicon file';
		element: [ self lexiconProfileExtract gtJSONFor: GtPhlowProtoView new ]
]

{ #category : #slides }
Monash2024 >> lexiconGeneratedClass: aSlide [
	<gtSlide>

<text:
'
TODO

## Code generated from a lexicon

'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Code generated from a lexicon';
		element: [ (GtCoderElement forClass: AppBskyActorProfileMain) createInPager maximized ]
]

{ #category : #example }
Monash2024 >> lexiconProfile [
	<gtExample>
	^ '{
  "lexicon": 1,
  "id": "app.bsky.actor.profile",
  "defs": {
    "main": {
      "type": "record",
      "description": "A declaration of a Bluesky account profile.",
      "key": "literal:self",
      "record": {
        "type": "object",
        "properties": {
          "displayName": {
            "type": "string",
            "maxGraphemes": 64,
            "maxLength": 640
          },
          "description": {
            "type": "string",
            "description": "Free-form profile description text.",
            "maxGraphemes": 256,
            "maxLength": 2560
          },
          "avatar": {
            "type": "blob",
            "description": "Small image to be displayed next to posts from account. AKA, ''profile picture''",
            "accept": ["image/png", "image/jpeg"],
            "maxSize": 1000000
          },
          "banner": {
            "type": "blob",
            "description": "Larger horizontal image to display behind profile view.",
            "accept": ["image/png", "image/jpeg"],
            "maxSize": 1000000
          },
          "labels": {
            "type": "union",
            "description": "Self-label values, specific to the Bluesky application, on the overall account.",
            "refs": ["com.atproto.label.defs#selfLabels"]
          },
          "joinedViaStarterPack": {
            "type": "ref",
            "ref": "com.atproto.repo.strongRef"
          },
          "pinnedPost": {
            "type": "ref",
            "ref": "com.atproto.repo.strongRef"
          },
          "createdAt": { "type": "string", "format": "datetime" }
        }
      }
    }
  }
}
'
]

{ #category : #example }
Monash2024 >> lexiconProfileExtract [
	<gtExample>
	^ '{
  "lexicon": 1,
  "id": "app.bsky.actor.profile",
  "defs": {
    "main": {
      "type": "record",
      "description": "A declaration of a Bluesky account profile.",
      "key": "literal:self",
      "record": {
        "type": "object",
        "properties": {
          "displayName": {
            "type": "string",
            "maxGraphemes": 64,
            "maxLength": 640
          },
          "description": {
            "type": "string",
            "description": "Free-form profile description text.",
            "maxGraphemes": 256,
            "maxLength": 2560
          },
          "avatar": {
            "type": "blob",
            "description": "Small image to be displayed next to posts from account. AKA, ''profile picture''",
            "accept": ["image/png", "image/jpeg"],
            "maxSize": 1000000
          },
          "...": {},
          "createdAt": { "type": "string", "format": "datetime" }
        }
      }
    }
  }
}
'
]

{ #category : #slides }
Monash2024 >> llmTutorExplorer: aSlide [
	<gtSlide>
	<text:
'TODO

# Exploring an LLM chat
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Exploring an LLM chat');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
Monash2024 >> mdForResearch: aSlide [
	<gtSlide>
	<text:
'TODO

## Moldable Development as a Research Methodology

Iteratively model and explore software, data, algorithms etc
Grow a model, adding custom analysis tools

Build a model, form hypotheses, run experiments, consolidate results into new knowledge


		
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable Development as a Research Methodology');
		paragraphWithFormat: (self
				asText: 
'

• Pose questions
• Gather information (explore software data)
• Form hypotheses (build models)
• Run experiments (custom tooling)
• Consolidate new knowledge (extract examples)
')
]

{ #category : #slides }
Monash2024 >> moldableDevelopment: aSlide [
	<gtSlide>
	<text:
'## Moldable development in a nutshell

Moldable development is a methodology that makes a system explainable by extending it with numerous custom tools that answer specific questions about the system and its underlying domain concepts.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable development');
		paragraphWithFormat: (self
				asText: 
'

extends a system with ') , (self asText: 'custom analysis tools') italic , (self asText: ' that answer questions about its inner workings, and make it ') , (self asText: 'explainable') italic, (self asText: '.
')
]

{ #category : #slides }
Monash2024 >> moreOpaqueness: aSlide [
	<gtSlide>
	<text:
'## Opaqueness

Other means of understanding opaque systems are also commonly ineffective.

Reading source code does not scale to large systems. Documentation is typically incomplete, out of date, and inconsistent with the current implementation. Googling or using online resources typically yields many false positives, as do off-the-shelf analysis tools or generative AI tools.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Inadequate means to understand software:');
		paragraphWithFormat: (self
				asText: 
'
• Browsing source code
• Reading documentation
• Consulting online resources
• Generic analysis tools
• Generative AI
')
]

{ #category : #slides }
Monash2024 >> placeholder: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
Monash2024 >> runningSystem: aSlide [
	<gtSlide>
	<text:
'## Running systems are typically opaque

A running system just shows its UI. You can interact with this, but you can''t gain any insight into the inner workings of the game or its logic.'>
	<demo:
'- Click on the die repeatedly, and make moves when possible.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'You can interact with a running system, but you can''t ask it questions.';
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #accessing }
Monash2024 >> slidePriorities [
	<gtExample>
	^ #( 
		title:
		
		explainableSystems:
			runningSystem:
			moreOpaqueness:
			moldableDevelopment:
			explainableLudo:
		
		cardDemoExample:
			cardDemoFiles:
			cardDemo:
	
		githubExample:
			githubFeenkOrgJSon:
			githubOrgDemoPage:
			githubFeenkOrgWrapped:

			
		blueSkyExplorer:
			blueSkyUser:
			lexiconExample:
			lexiconGeneratedClass:
		
		"CONTINUE HERE"
		
		llmTutorExplorer:
		
		mdForResearch:
		
		"Lucene example?"
		
		gtTools:
			smaccPage:
			splFactorial:
			gtBookLinksMondrian:
			gtToolingTreemap:
		
		takeaways:
		
		summarySlide:
		placeHolder:
	)
]

{ #category : #slides }
Monash2024 >> smaccPage: aSlide [
	<gtSlide>
	<text:
'
TODO
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'SmaCC parsing engine';
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool
						page: (self gtBook pageNamed: 'Querying SmaCC abstract syntax trees (ASTs)')))
				maximized ]
]

{ #category : #slides }
Monash2024 >> splFactorial: aSlide [
	<gtSlide>
	<text:
'
TODO

'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A small step interpreter built with PetitParser';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: SPLContextExamples new factorial))
				maximized ]
]

{ #category : #slides }
Monash2024 >> summarySlide: aSlide [
	<gtSlide>
	<text:
'TODO

# Summary
'>
	| slideSelectors |
	slideSelectors := #(
		explainableSystems:
		cardDemo: 
		gtToolingTreemap:
		mdForResearch:).
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Summary';
		element: [ self summaryElementFor: slideSelectors ]
]

{ #category : #slides }
Monash2024 >> takeaways: aSlide [
	<gtSlide>
	<text:
'
TODO
# Takeaways

Add main points




'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Takeaways:');
		paragraphWithFormat: (self
				asText: 
'

• To do


'),
(self asText: '
Download: ') italic,
((self asText: 'gtoolkit.com') glamorousCodeFont fontSize: 28)
]

{ #category : #slides }
Monash2024 >> title: aSlide [
	<gtSlide>
	<text:
'TODO

# GT: A Moldable Research Platform


'>

	^ aSlide titleWithFooters
		setPriority;
		titleBottomPadding: 40;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'GT: A Moldable Research Platform');
		subtitleWithFormat: (self asSubtitle: '');
		newFooterWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
