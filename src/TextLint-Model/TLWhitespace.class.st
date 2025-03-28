Class {
	#name : 'TLWhitespace',
	#superclass : 'TLSyntacticElement',
	#classVars : [
		'NewLineParser'
	],
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'initialization' }
TLWhitespace class >> initialize [
	"Platform independent newline sequence. LF: Unix, CR+LF: Windows, and CR: Apple."
	NewLineParser := (Character lf asPParser) / (Character cr asPParser , Character lf asPParser optional)
]

{ #category : 'instance creation' }
TLWhitespace class >> new [
	^ self basicNew initializeWith: (PPToken on: ' ')
]

{ #category : 'testing' }
TLWhitespace >> isEndOfParagraph [
	| count |
	count := 0.
	NewLineParser
		matchesIn: token value
		do: [ :each | 
			(count := count + 1) = 2
				ifTrue: [ ^ true ] ].
	^ false
]

{ #category : 'testing' }
TLWhitespace >> isWhitespace [
	^ true
]
