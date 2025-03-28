Class {
	#name : 'TLFunnyRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLFunnyRule >> matchingString [
	^ 'funny'
]

{ #category : 'accessing' }
TLFunnyRule >> name [
	^ 'Avoid "funny"'
]

{ #category : 'accessing' }
TLFunnyRule >> rationale [
	^ 'Avoid it as a means of introduction. Do not announce that something is funny, it should be by itself.'
]
