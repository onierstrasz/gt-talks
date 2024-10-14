Class {
	#name : #EDDLiveSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
EDDLiveSlideshow >> buildingOnExamples: aSlide [
	<gtSlide>
	<text: '# Building on Examples

Here we see a partial implementation of a Film Collection created from an exported csv of an IMDB collection. The csv file is an example, as is the JSON data we obtain by parsing the CSV, and the FilmCollection example that wraps the JSON data.

Each example is a test case with some assertions, but it also returns the object under test. If we explore the collection, we see that there are more interesting fields that might be nice to see in the Films view.

We verify that we can send `directors` to a film instance, and we update the Films view to show the Directors as well.

We can also create a new example by extracting the Films of Akira Kurosawa, using that to build a new FilmCollection, and extracting it as an example.
'>
	<demo: '- Browse the `collection` method.
- Show how it is composed.
- Inspect the collection.
- Inspect a film.
- Query its directors.
- Update the FilmCollection view with a Directors column.
- In the context of `FilmCollectionExamples new` start from self collection and build up the Kurosawa example
- Extract it as an example:
```
FilmCollection new
	data: ((self collection films select: [ :f | f directors = ''Akira Kurosawa'' ]) collect: #data)
```
'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Building on Examples')
]

{ #category : #page }
EDDLiveSlideshow >> buildingOnExamplesPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Building on Examples')
	addSnippet: (LeTextSnippet new
			string: 'A {{gtClass:name=FilmCollection}} is a collection of {{gtClass:name=Film}} objects constructed from an exported csv of an IMDB collection. Here''s an example we would like to build on:';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'FilmCollectionExamples new collection.';
			yourself);
	yourself
]

{ #category : #slides }
EDDLiveSlideshow >> exampleMetrics: aSlide [
	<gtSlide>
	<text: '... Examples within GT

Examples are heavily used within GT, both as test cases and to create documentation.'>
	<demo: '- Run at end during Q&A'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Examples within GT')
]

{ #category : #page }
EDDLiveSlideshow >> exampleMetricsPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Examples within GT')
	addSnippet: (LeTextSnippet new
			string: '*Metrics view of example methods in the current image:*';
			yourself);
	addSnippet: (LePharoSnippet new
			code: '#gtExample gtPragmas';
			yourself);
	"addSnippet: (LeElementSnippet new
			code: '(GtSearchPragmasFilter new symbol: #gtExample) gtMetricsFor: GtPhlowView new ';
			codeVisible: false;
			elementHeight: 175;
			codeHeight: 50;
			yourself);"
	yourself
]

{ #category : #slides }
EDDLiveSlideshow >> examplesExplorer: aSlide [
	<gtSlide>
	<text: '... Examples explorer

Here we see the examples explorer for the entire GT system.

We can dive in, for example, to see the examples maps for all the gtoolkit demos.'>
	<demo: '- Dive into `gtoolkit-demos` and see the example maps.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Examples explorer';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: GtRlGToolkitExamplesExplorer buildForGToolkitProject))
				maximized ]
]

{ #category : #slides }
EDDLiveSlideshow >> ludoCaseStudyPage: aSlide [
	<gtSlide>
	<text: '# Examples as Documentation

Here we see the Glamorous Toolkit (or GT) Book, a knowledge base for GT, a moldable development environment.

This page documents the Ludo game case study using embedded examples. If we scroll down, we see different kinds of moves of the game examplified, including an “impossible move.”

We can dive into this example, and explore various views of the move, and even replay the game up to this point to understand how we got here.

If we explore the source code of the example, we see it belongs to a class of example methods. This move is just the last move of another example that shows all 5 kinds of moves. The method looks just like a unit test case, with the only difference being that we return the fixture as a result that we can inspect.

We can also reuse the results to build new examples. Here is a map of all the examples in this class showing how they are composed.

If we break one of the examples, then the dependent tests won''t be run.
'>
	<demo: '
- Scroll down to Impossible move
- Inspect the example
- Replay to here
- Inspect the moved of the game
- Go back and inspect the source code
- Open the code bubble of `gameShowingAllMoves5`
- Show that it returns an example
- Inspect the example
- Show the example map
- Break an assertion
- Run the examples and show which are not run
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Examples as Documentation';
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool
						page: (self gtBook
								pageNamed: 'Executable domain-driven design: the Ludo game case study')))
				maximized ]
]

{ #category : #slides }
EDDLiveSlideshow >> pervasiveTools: aSlide [
	<gtSlide>
	<text: '... Custom tools are pervasive

This visualization shows a treemap of packages and classes in the current image.

Blue classes have at least one custom view and green ones have at least one example. This shows that custom tools were  heavily used to build the moldable development environment itself.

Here at the top left we see `BlElement`, the root of the graphical hierarchy.'>
	<demo: '- Click on the top-left class (BlElement)'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Custom tools are pervasive.';
		element: [ (GtPager createWrappedOn: GtTour new treemapWithViewsAndExamples) maximized ]
]

{ #category : #slides }
EDDLiveSlideshow >> placeholder: aSlide [
	"<gtSlide>"
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

{ #category : #accessing }
EDDLiveSlideshow >> slidePriorities [
	<gtExample>
	^ #( 
		title:
		ludoCaseStudyPage:
		whatsAnExample:
		buildingOnExamples:
		squarifiedTreemapPage:
		whyExamples:

		"Extra slides"
		pervasiveTools:
		turningTestsIntoExamples:
		examplesExplorer:
		exampleMetrics:
	)
]

{ #category : #slides }
EDDLiveSlideshow >> squarifiedTreemapPage: aSlide [
	<gtSlide>
	<text:
'# Explaining the squarified treemap algorithm

Here''s another case study where examples are used to document an algorithm. The squarified Treemap algorithm generates very nicely laid out treemaps using a simple algorithm described in this paper.

A better way to understand the algorithm is using live examples. The picture looks the same, but we can dive into it. At each subdivision step we see whether the algorithm accepts the new node, or if it changes direction to maintain a squarified look.

'>

<demo:
'- Scroll down to the paper
- Scroll to the example right after the paper
- Dive into the example
- Show the *Steps figure* and the *Steps list*'>


	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Explaining the squarified treemap algorithm';
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool
						page: (self gtBook pageNamed: 'Explaining the squarified treemap algorithm')))
				maximized ]
]

{ #category : #slides }
EDDLiveSlideshow >> title: aSlide [
	<gtSlide>
	<text: '# Example-Driven Development -- bridging tests and documentation

Hello. My name is Oscar Nierstrasz.

Today I''d like to show you how turning tests cases into factories for examples can enable opportunities for embedding live examples into documentation.

Furthermore, examples can form the basis of a development process driven by the creation of examples.'>
	^ aSlide titleWithFooters
		setPriority;
		titleWithFormat: (self asTitle: 'Example-driven development:');
		subtitleWithFormat: (self asSubtitle: 'bridging tests and documentation');
		newFooterWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com') underline;
		newFooterWithFormat: (self asBigText: 'andrei.chis@feenk.com');
		newFooterWithFormat: (self asBigText: 'tudor.girba@feenk.com')
]

{ #category : #slides }
EDDLiveSlideshow >> turningTestsIntoExamples: aSlide [
	<gtSlide>
	<text: '... Turning tests  into examples

Turning conventional tests into examples is straightforward. Here we have a class that tests the `FileLocator` utility.

If we run these tests, they are green, but we cannot explore an example unless we break an assertion so the test fails.

We can turn this test into an example easily as follows. We change the method name to leave the old test method as it is. We add a `<gtExample>` pragma (annotation). And finally we return the fixture. Now we have a green test that returns an example that we can explore.
'>
	<demo: '- Show the class
- Edit the test case
- Inspect the example'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Turning tests  into examples')
]

{ #category : #page }
EDDLiveSlideshow >> turningTestsIntoExamplesPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Turning tests  into examples')
	addSnippet: (LeTextSnippet new
			string: '{{gtClass:name=FileLocatorTest}} contains numerous conventional tests.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'FileLocatorTest methods 
	select: [ :m | m selector beginsWith: ''test'' ].';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'We can run them, but that''s all.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'Let''s convert this to an example:';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '{{gtMethod:name=FileLocatorTest>>#testFileSystem|expanded}}';
			yourself);
	yourself
]

{ #category : #slides }
EDDLiveSlideshow >> whatsAnExample: aSlide [
	<gtSlide>
	<text: '# What''s an Example?

An example method is just a test method that happens to return the object being tested.
Through this simple change, instead of a passing test simply being green, we get back an object that we can inspect, explore, and reuse for various purposes.'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'What''s an Example?');
		paragraphWithFormat: (self
				asText: '

An example (method) is a test that '), (self asText: 'returns an example.
') italic
]

{ #category : #slides }
EDDLiveSlideshow >> whyExamples: aSlide [
	<gtSlide>
	<text: 
'# Summary -- Why examples?

What are example methods good for?

As we have seen, examples make dependencies between tests explicit by reusing examples as setups for other examples, thus forming a hierarchy of examples.

Best practice in test design supposedly should avoid dependencies between tests, but studies have shown that this practice instead leads to implicit dependencies due to duplicated code in test setups. This in turn leads to cascading failures due to the same setups being repeated in numerous tests. By factoring out the commonalities as examples, the duplication is removed, and cascading failures are avoided.

A further benefit is that examples can be used in live documentation.

Examples also support an exploratory approach to test-driven development, that we call example-driven development, or EDD. The key differences is that, instead of starting from the source code test cases, we start from existing live examples to code new features, and create new, tested examples.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Summary');
		paragraphWithFormat: (self
				asText: 
'
• Example = Test + Factory
• Examples can be '),(self asText: 'composed.') italic,
(self asText: '
• Examples are a '),(self asText: 'stepstone for further development.') italic,
( self asText: '
• Examples can be reused in '),(self asText: 'live documentation.') italic,
(self asText: '
• EDD is an '),( self asText: 'exploratory approach') italic,( self asText: ' to TDD.

'),(self asText: 'Read: ') italic,(self asText: 'tinyurl.com/eddLivePaper') glamorousCodeFont,
(self asText: '
Download: ') italic,(self asText: 'gtoolkit.com') glamorousCodeFont
]
