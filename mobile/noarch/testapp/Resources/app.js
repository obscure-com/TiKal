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