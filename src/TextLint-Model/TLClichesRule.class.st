Class {
	#name : 'TLClichesRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLClichesRule >> matchingPattern [
	^ (TLPatternTokenizer parse: 'all things being equal')
	/ (TLPatternTokenizer parse: 'all things considered')
	/ (TLPatternTokenizer parse: 'as a matter of fact')
	/ (TLPatternTokenizer parse: 'as far as I am concerned')
	/ (TLPatternTokenizer parse: 'at the end of the day')
	/ (TLPatternTokenizer parse: 'at the present time')
	/ (TLPatternTokenizer parse: 'due to the fact that')
	/ (TLPatternTokenizer parse: 'for all intents and purposes')
	/ (TLPatternTokenizer parse: 'for the most part') 
	/ (TLPatternTokenizer parse: 'for the purpose of')
	/ (TLPatternTokenizer parse: 'in a manner of speaking')
	/ (TLPatternTokenizer parse: 'in my opinion')
	/ (TLPatternTokenizer parse: 'in the event of')
	/ (TLPatternTokenizer parse: 'in the final analysis')
	/ (TLPatternTokenizer parse: 'it seems that') 
	/ (TLPatternTokenizer parse: 'the point that I am trying to make')
	/ (TLPatternTokenizer parse: 'type of') 
	/ (TLPatternTokenizer parse: 'what I am trying to say')
	/ (TLPatternTokenizer parse: 'what I want to make clear')
]

{ #category : 'accessing' }
TLClichesRule >> name [
	^ 'Avoid cliches'
]

{ #category : 'accessing' }
TLClichesRule >> rationale [
	^ 'Avoid empty phrases (cliches). These phrases mean little. Just cut them off your writing.'
]
