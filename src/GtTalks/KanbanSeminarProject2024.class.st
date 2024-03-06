"
Slides for a proposal for a [SEG seminar project](https://seg.inf.unibe.ch/teaching/current/seminar/
).
"
Class {
	#name : #KanbanSeminarProject2024,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
KanbanSeminarProject2024 >> gtBook: aSlide [
	<gtSlide>
	<text:
'# GT book

The Glamorous Toolkit is a development environment for building live, explainable software systems.

The GT Book is a built-in knowledge base of live notebook pages that document the system itself.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The GT book is a collection of connected, live notebook pages';
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool
						page: (self gtBook pageNamed: 'About this book')))
				maximized ]
]

{ #category : #slides }
KanbanSeminarProject2024 >> kanban: aSlide [
	<gtSlide>
	<text: 
'# A GT Kanban mockup
	
What''s missing is a Kanban view; an initial Kanban could be generated from tags.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A mockup of a GT Kanban using Trello';
		element: [ GtFilePictureLiveSlide new
				fileReference: (GtResourcesUtility
						resourceAtPath: self picturesDirectoryPath / 'gtTrelloMockup.png') ]
]

{ #category : #accessing }
KanbanSeminarProject2024 >> personalDb [
	^ LeDatabase databaseNamed: 'Documents/lepiter/default'
]

{ #category : #slides }
KanbanSeminarProject2024 >> personalNotes: aSlide [
	<gtSlide>
	<text: '# Personal Lepiter database

You also have personal database that is stored in your Documents folder.

You can use it to document projects, scribble notes, experiment with code, or track issues and tasks.

My pages are organized using tags.
A Tag is just a page that is used to link related pages, like ToDo or Issue or Bug.

You can also add a project-specific database to your GitHub projects.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'My private Lepiter database';
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool page: (self personalDb pageNamed: 'ToDo')))
				maximized ]
]

{ #category : #accessing }
KanbanSeminarProject2024 >> picturesDirectoryPath [
	^ Path * 'onierstrasz' / 'ONHome' / 'data' / 'images'
]

{ #category : #slides }
KanbanSeminarProject2024 >> placeholder: aSlide [
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
KanbanSeminarProject2024 >> projectTasks: aSlide [
	<gtSlide>
	<text:
'# Project tasks

Roughly, there are four phases.'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Project tasks');
		paragraphWithFormat: (self
				asText: 
'

(0) get acquainted with GT
(1) model Kanban boards on top of GT pages
(2) build a nice visualization
(3) add interaction (drag and drop)
')
]

{ #category : #accessing }
KanbanSeminarProject2024 >> slidePriorities [
	<gtExample>
	^ #( 
		titleSlide:
		gtBook:
		#personalNotes:
		#todoMap:
		kanban:
		projectTasks:
		thesis:
		
		"placeholder:"
	)
]

{ #category : #slides }
KanbanSeminarProject2024 >> thesis: aSlide [
	<gtSlide>
	<text:
'# Thesis followup

A possible MSc or Bachelor thesis topic would be on layering SE tools on top of software project data.

Other possible visualizations include MindMaps, Treemaps and other project management views.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Followup thesis work?');
		paragraphWithFormat: (self
				asText: 
'
“Layering SE tools on top of software project data”
')
]

{ #category : #slides }
KanbanSeminarProject2024 >> titleSlide: aSlide [
	<gtSlide>

<text: 
'# Layering Kanban over Notebook pages

This project is about providing a higher-level views over a collection of notebook pages that document issues, bugs, feature enhancements and other todos.

The idea is to
(1) create an explorable model of this data as a Kanban board, and
(2) develop a nice, interactuive visualization.'>

	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Layering Kanban over Notebook pages');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]

{ #category : #accessing }
KanbanSeminarProject2024 >> toDoMap [
	<gtExample>
	^ ToDoMap new map
]

{ #category : #slides }
KanbanSeminarProject2024 >> todoMap: aSlide [
	<gtSlide>
	<text:
'# A Map of my ToDos

We can have various views of the database like this Mondrian graph.

Tasks to do ASAP are in red, and those to be done Soon are in pink.

Issues are in magenta, GT Book tasks in light blue and HowTos in light green.

Everything else is in grey.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A map of my ToDo pages';
		element: [ (GtPager createWrappedOn: self toDoMap) maximized ]
]
