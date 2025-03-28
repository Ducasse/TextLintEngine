Class {
	#name : 'TLCaseRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLCaseRule >> matchingPattern [
	^  (self wordIn: #('case' 'cases')) , (self separators) , (self punctuation: '-') optional , (self separators) , (self wordIn: #('grammar' 'grammars' 'harden' 'histories' 'history' 'knife' 'knives' 'law' 'mod' 'sensitive' 'shot' 'stated' 'studies' 'study' 'system')) not
]

{ #category : 'accessing' }
TLCaseRule >> name [
	^ 'Avoid "case"'
]

{ #category : 'accessing' }
TLCaseRule >> rationale [
	^ 'Often unnecessarey, e.g. "In many cases, the room lacked air conditioning" can be replaced with "Many of the rooms lacked air conditioning".'
]
