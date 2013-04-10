# TiKal

by Paul Mietz Egli (paul@obscure.com)
based on Kal by Keith Lazuka (https://github.com/klazuka/Kal)

**TiKal** is an Appcelerator Titanium module which wraps Kal, an open-source
calendar UI component.

## Building

1. Clone this github repository.
2. In the same directory as this README.md file, run `git submodule init`, then `git submodule update`.
3. Open `titanium.xcconfig` and verify that the path to the Titanium SDK is correct for your system.
4. Run `./build.py` to generate the module ZIP file.

## Using the Module

`KalView` is a Titanium view that displays a calendar and a list of events for the
selected date.

```javascript
var TiKal = require('com.obscure.tikal');

var kal = TiKal.createKalView();
kal.addEventListener('select', function(e) {
  alert("selected "+e.selectedDate);
});
win.add(kal);
```

## Requirements

* Titanium SDK 3.0.2 or later
* Xcode 4.5 or later

## License

* TiKal is under the Apache License 2.0
* Kal is under the MIT License. See that project for additional licenses.

## Development Status 

**1.0**

2013-04-10

Initial checkin.  Calendar displays and produces a "select" event; data source not done.
