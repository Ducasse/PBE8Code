"
I'm a simple cell for the lights out game. 
I basically just handle mouse events. 
"
Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initialization }
LOCell >> initialize [
	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow.
	onColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff
]

{ #category : #events }
LOCell >> mouseAction: aBlock [
	mouseAction := aBlock
]

{ #category : #events }
LOCell >> mouseUp: anEvent [
	mouseAction value
]
