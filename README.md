hubot-orly
================
[![npm version](https://badge.fury.io/js/hubot-orly.svg)](https://badge.fury.io/js/hubot-orly)

Hubot interface to create O'rly book covers.

<img width="350px" src="https://orly-appstore.herokuapp.com/generate?title=Learning%20Coffeescript&guide_text=A%20practical%20guide&top_text=Javascript%20is%20better!&author=Jordan%20Neufeld&image_code=2&theme=14">

## Installation

* Run the ```npm install``` command

```
npm install hubot-orly --save
```

* Add **hubot-orly** to the array in your external-scripts.json file.

```
[
  "hubot-orly"
]
```

## Usage

```
bin/hubot

hubot> hubot orly Learning Coffeescript; A practical guide; Javascript is better!; Jordan Neufeld                  
hubot> https://orly-appstore.herokuapp.com/generate?title=Learning%20Coffeescript&guide_text=A%20practical%20guide&t
op_text=Javascript%20is%20better!&author=Jordan%20Neufeld&image_code=2&theme=14
```

## Acknowledgements
Thanks to [@ThePracticalDev](https://twitter.com/ThePracticalDev) for creating this [book cover generator](https://dev.to/rly).


