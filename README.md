# LearnPharo

## ZLinkedList

A simple singly linked list. Example:

```
| list |
list := ZLinkedList new.
list insert: 5.
list elementAt: 1. --> 5
```

## ZDoc

A javadoc like utility that prints documentation of classes and packages to streams. Example: 

```
ZDoc documentClass: ZLinkedList on Transcript.
```

Prints: 

```
Documentation for ZLinkedList
Class comment: I represent a singly linked list.

Messages
-----
#count
'Answers the number of elements in the linked list.'

#removeAt:
'Removes the element from anIndex.'

#initialize
'comment stating purpose of message'

#elementAt:
'Answers with the element at anIndex.'

#insert:
'Inserts an element at the end of the linked list.'
```
