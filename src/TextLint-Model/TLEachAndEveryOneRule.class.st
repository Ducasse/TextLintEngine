Class {
	#name : 'TLEachAndEveryOneRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'running' }
TLEachAndEveryOneRule >> matchingString [
	^ 'each and every one'
]

{ #category : 'accessing' }
TLEachAndEveryOneRule >> name [
	^ 'Avoid "each and every one"'
]

{ #category : 'accessing' }
TLEachAndEveryOneRule >> rationale [
	^ 'Jargon, avoid except in dialog.'
]
