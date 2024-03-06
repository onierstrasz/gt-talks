Class {
	#name : #DrGeoSeminarProject2024,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #page }
DrGeoSeminarProject2024 >> aboutDrGeo [
	"NB: loading the YouTube video snippet is very slow!"

	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'About Dr Geo')
	addSnippet: (LeTextSnippet new
			string: ' [Dr. Geo](https://www.gnu.org/software/dr-geo/) is an interactive tool to help kids learn about geometry.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'Users can design complex geometric diagrams with constraints to illustrate methematical or even physical properties.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'Diagrams can be saved as *sketches* that can be loaded again, or shared with other users.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'See [Demo video on Youtube](https://youtu.be/gd8Wa1rSK_M?start=165&end=240). ';
			yourself);
	addSnippet: (LeElementSnippet new
			code: 'GtFileUtility imageElementFromFileReference: FileLocator gtResource / ''onierstrasz/ONHome/data/images/drGeoYoutube.jpg''';
			codeVisible: false;
			elementHeight: 390;
			codeHeight: 50;
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	yourself
]

{ #category : #slides }
DrGeoSeminarProject2024 >> drGeoPotential: aSlide [
	<gtSlide>
	<text:
'# Dr. Geo as an explainable system

There are many interesting opportunities for Dr.Geo as an explainable system.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Dr. Geo as an explainable system');
		paragraphWithFormat: (self
				asText: 
'

• Offer dedicated, custom views to expose Dr Geo''s domain concepts 
• Encapsulate interesting examples as live test cases
• Embed Dr Geo examples and sketches within live documentation
')
]

{ #category : #slides }
DrGeoSeminarProject2024 >> explainableSoftware: aSlide [
	<gtSlide>
	<text:
'# Explainable software

Explainable systems expose their inner workings in such a way that you can have a conversation with them.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'An explainable software makes its domain concepts queryable and explorable.';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: GtLudoRecordingGameExamples new gameShowingAllMoves2))
				maximized ]
]

{ #category : #page }
DrGeoSeminarProject2024 >> loadingDrGeo [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Loading Dr Geo code')
	addSnippet: (LeTextSnippet new
			string: 'We define some missing classes as stubs.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'missingClasses := #(ActiveModel LayoutMorph DebuggerWindow WizardPanel DialogPanel Panel BoxedMorph PreferenceType Debugger MorphicEruditeDocRenderer PreferenceBrowserVisitor).

missingClasses
	do: [ :eachClass | 
		Object
			subclass: eachClass
			instanceVariableNames: ''''
			classVariableNames: ''''
			package: ''DrGeo-Missing'' ].';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'Load the *patched* Dr Geo migration project repo.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'drGeoSrcPatched := FileLocator gtResource 
	/ ''onierstrasz/ONHome/data/fileOuts/DrGeo.pck-patched-2024-02-23.st''.
[[drGeoSrcPatched fileIn] asJob run] fork.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'We can now browse the Dr Geo packages.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: '#DrGeo asClass.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	yourself
]

{ #category : #slides }
DrGeoSeminarProject2024 >> loadingDrGeoCode: aSlide [
	<gtSlide>
	<text:
'# Loading Dr Geo code into GT

Dr. Geo is implemented in Cuis Smalltalk, a different dialect than GT.

Glamorous Toolkit is build on top of Pharo, which is a fork from Squeak, a descendent of Smalltalk-80.
Cui Smalltalk, developed by a team in Argentina, is another fork of Squeak, with a completely different graphic system.

It''s been possible to load the Dr Geo implementation code into GT to explore it, but it will not run.

But this can serve as a starting point for exploring and migration Dr Geo to GT.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Loading DR Geo code into GT';
		element: [ GtFilePictureLiveSlide new
				fileReference: (GtResourcesUtility
						resourceAtPath: self picturesDirectoryPath / 'drGeoClasses.png') ]
]

{ #category : #slides }
DrGeoSeminarProject2024 >> loadingDrGeoPage: aSlide [
	<gtSlide>
	<text:
'# Loading Dr Geo

After fixing some compatibility issues between the Cuis and Pharo dialects, we can load the code into GT and explore it, even if it won''t run.

This can serve as a starting point for migration.'>

	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Loading Dr Geo code')
]

{ #category : #slides }
DrGeoSeminarProject2024 >> opaqueSoftware: aSlide [
	<gtSlide>
	<text:
'# Opaque software

Most software systems are opaque.
You can either interact with the running system, or you can stare at the source code.
Neither is a good way to learn about the system.
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'You can interact with a live system, but you can''t ask it questions.';
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #accessing }
DrGeoSeminarProject2024 >> picturesDirectoryPath [
	^ Path * 'onierstrasz' / 'ONHome' / 'data' / 'images'
]

{ #category : #slides }
DrGeoSeminarProject2024 >> placeholder: aSlide [
	"<gtSlide>"
	<text:
'TODO

Placeholder'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Placeholder');
		paragraphWithFormat: (self
				asText: 'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
DrGeoSeminarProject2024 >> projectTasks: aSlide [
	<gtSlide>
	<text:
'# Project tasks
'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Project tasks');
		paragraphWithFormat: (self
				asText: 
'

(0) Get acquainted with GT
(1) Get acquainted with Dr Geo in Cuis
(2) Start to port some simple sketches to GT
(3) Develop custom views for Dr Geo domain entities
(4) Encapsulate test examples for the ported code
(5) Demo the use of examples in live notebook pages
')
]

{ #category : #accessing }
DrGeoSeminarProject2024 >> slidePriorities [
	<gtExample>
	^ #( 
		titleSlide:
		whatIsDrGeo:
		opaqueSoftware:
		explainableSoftware:
		drGeoPotential:
		loadingDrGeoPage:
		loadingDrGeoCode:
		projectTasks:
		thesis:
		"placeholder:"
	)
]

{ #category : #slides }
DrGeoSeminarProject2024 >> thesis: aSlide [
	<gtSlide>
	<text:
'# Thesis followup

There are various ways this work could be expanded to a thesis.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Followup thesis work?');
		paragraphWithFormat: (self
				asText: 
'


• Software migration strategies

• Transforming existing software into
   an explainable system

• Augmenting teaching software with 
   live notebooks and custom tools
')
]

{ #category : #slides }
DrGeoSeminarProject2024 >> titleSlide: aSlide [
	<gtSlide>

<text: 
'# Migrating Dr. Geo to GT

This project is about migrating a tool for teaching kids about geometry from one Smalltalk system to another.

This migration offers many interesting opportunities to make the system more friendly to both kids and teachers.

The project will be supported by Hilaire Fernandes, the developer of Dr Geo.'>

	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 40;
		subtitleBottomPadding: 60;
		titleWithFormat: (self asTitle: 'Migrating Dr. Geo to GT');
		subtitleWithFormat: (self asSubtitle: 'Interactive geometry for kids as an explainable system');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]

{ #category : #slides }
DrGeoSeminarProject2024 >> whatIsDrGeo: aSlide [
	<gtSlide>
	<text:
'# What is Dr. Geo?

Dr. Geo is an interactive tool for kids to learn geometry.

They can create geometric sketches that express geometric properties, or they can explore sketches perpared by teachers or others.'>

	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'About Dr Geo')
]
