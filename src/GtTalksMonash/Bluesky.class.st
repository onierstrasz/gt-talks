"
A Facade to simplify querying the Bluesky API.
We assume that login credentials are in the `secretsFile` as a JSON that looks like this:

{
	""username"" : ""onierstrasz"",
	""handle"" : ""onierstrasz.bsky.social"",
	""password"" : ""...""
}

"
Class {
	#name : #Bluesky,
	#superclass : #Object,
	#instVars : [
		'client'
	],
	#category : #'GtTalksMonash-Bluesky'
}

{ #category : #accessing }
Bluesky class >> actor [
]

{ #category : #accessing }
Bluesky >> actor [
	^ self actorFor: self handle
]

{ #category : #accessing }
Bluesky >> actorFor: aHandle [
	^ (self client appBskyActorGetProfileActor: aHandle) client: self client
]

{ #category : #initialization }
Bluesky >> blueskySecrets [
	self assert: self secretsFile exists.
	^ STON fromString: self secretsFile contents
]

{ #category : #accessing }
Bluesky >> client [
	client
		ifNil: [ client := GtApGeneratedClient onServer: self pdsUrl.
			client loginUser: self handle withPass: self password ].
	^ client
]

{ #category : #initialization }
Bluesky >> handle [
	^ self blueskySecrets at: 'handle'
]

{ #category : #initialization }
Bluesky >> password [
	^ self blueskySecrets at: 'password'
]

{ #category : #constant }
Bluesky >> pdsUrl [
	^ 'https://bsky.social'
]

{ #category : #constant }
Bluesky >> secretsFile [
	^ FileLocator home / '.secrets/bluesky.txt'
]

{ #category : #accessing }
Bluesky >> username [
	^ self blueskySecrets at: 'username'
]
