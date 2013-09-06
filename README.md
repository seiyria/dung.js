# dung.js

a shitty little game development framework

[![Build Status](https://secure.travis-ci.org/seiyria/dung.js.png?branch=master)](http://travis-ci.org/user/dung.js)

## Sublime Packages

Better CoffeeScript

## Sublime Setup

For the settings of Better CoffeeScript (CoffeeScript.sublime-settings), include this snippet:
```
{
	"compileDir": "ignored"
}
```

This will compile the test files to a directory that's ignored by git. You can always supply a directory like "C:\Users\UserName\Documents\JS\Ignored" too. 

## Installation

Install with npm:

```
npm install --save dung.js
```

## Testing

From the repo root:

```
npm install
npm test
```
