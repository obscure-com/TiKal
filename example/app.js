// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});

var TiKal = require('com.obscure.tikal');

var kal = TiKal.createKalView();
kal.addEventListener('select', function(e) {
  alert("selected "+e.selectedDate);
});
win.add(kal);

win.open();