Class {
	#name : 'TLPhrasePatternRule',
	#superclass : 'TLTextLintRule',
	#instVars : [
		'pattern',
		'name',
		'rationale'
	],
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLPhrasePatternRule class >> allRules [
	^ #()
]

{ #category : 'instance creation' }
TLPhrasePatternRule class >> named: aName rationale: aRationale matching: aString [ 
	^ self new initializeNamed: aName rationale: aRationale matching: aString 
]

{ #category : 'initialization' }
TLPhrasePatternRule >> initializeNamed: aName rationale: aRationale matching: aString [ 
	pattern := TLPatternTokenizer parse: aString.
	name := aName.
	rationale := aRationale
]

{ #category : 'accessing' }
TLPhrasePatternRule >> name [
	^ name
]

{ #category : 'accessing' }
TLPhrasePatternRule >> pattern [
	^ pattern
]

{ #category : 'accessing' }
TLPhrasePatternRule >> rationale [
	^ rationale
]

{ #category : 'running' }
TLPhrasePatternRule >> runOnSentence: aSentence [ 
	^ (self pattern matchesIn: aSentence children)
		collect: [ :each | TLRuleFailure on: self at: (TLPhrase withAll: each) ]
]
