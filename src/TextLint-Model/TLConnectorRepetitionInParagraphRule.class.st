Class {
	#name : 'TLConnectorRepetitionInParagraphRule',
	#superclass : 'TLTextLintRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'running' }
TLConnectorRepetitionInParagraphRule >> checkPhrasesIn: aParagraph addingFailuresTo: results [
	| counter phrases |
	self connectorPhrases
		do: [ :eachPhrase | 
			counter := 0.
			phrases := OrderedCollection new.
			aParagraph sentences
				do: [ :eachSentence | 
					(eachSentence allPhrasesOfSize: eachPhrase size)
						do: [ :each | 
							each text = eachPhrase text
								ifTrue: [ 
									phrases add: each.
									counter := counter + 1 ] ] ].
			counter > self repetitionLimit
				ifTrue: [ results addAll: phrases ] ]
]

{ #category : 'running' }
TLConnectorRepetitionInParagraphRule >> checkWordsIn: aParagraph addingFailuresTo: results [
	| failingWords value wordsCounter |
	wordsCounter := Dictionary new.
	failingWords := OrderedCollection new.
	aParagraph words
		do: [ :eachWord | 
			value := wordsCounter at: eachWord text ifAbsentPut: [ 0 ].
			wordsCounter at: eachWord text put: value + 1 ].
	wordsCounter
		keysAndValuesDo: [ :aKey :aValue | 
			(aValue > self repetitionLimit and: [ self connectorWords includes: aKey ])
				ifTrue: [ failingWords add: aKey ] ].
	aParagraph words
		do: [ :eachWord | 
			(failingWords includes: eachWord text)
				ifTrue: [ results add: eachWord ] ]
]

{ #category : 'accessing' }
TLConnectorRepetitionInParagraphRule >> connectorPhrases [
	| phrases aPhrase elements |
	phrases := OrderedCollection new.
	
	elements := OrderedCollection new.
	elements add: (TLWord with: (PPToken on: 'in')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'contrast')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'to')).
	aPhrase := TLPhrase withAll: elements.
	phrases add: aPhrase.
	
	elements := OrderedCollection new.
	elements add: (TLWord with: (PPToken on: 'in')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'addition')).
	aPhrase := TLPhrase withAll: elements.
	phrases add: aPhrase.
	
	elements := OrderedCollection new.
	elements add: (TLWord with: (PPToken on: 'on')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'the')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'other')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'hand')).
	aPhrase := TLPhrase withAll: elements.
	phrases add: aPhrase.
	^ phrases
]

{ #category : 'accessing' }
TLConnectorRepetitionInParagraphRule >> connectorWords [
	^ #('however' 'furthermore' 'still' 'nevertheless')
]

{ #category : 'accessing' }
TLConnectorRepetitionInParagraphRule >> name [
	^ 'Avoid connectors repetition'
]

{ #category : 'accessing' }
TLConnectorRepetitionInParagraphRule >> rationale [
	^ 'The constant repetition of the same connectors in a paragraph is weakening.'
]

{ #category : 'accessing' }
TLConnectorRepetitionInParagraphRule >> repetitionLimit [
	^1
]

{ #category : 'running' }
TLConnectorRepetitionInParagraphRule >> runOnParagraph: aParagraph [
	| results failures |
	results := OrderedCollection new.
	self checkWordsIn: aParagraph addingFailuresTo: results.
	self checkPhrasesIn: aParagraph addingFailuresTo: results.
	failures := OrderedCollection new.
	results do: [:each | failures add: (TLRuleFailure on: self at: each) ].
	^ failures
]
