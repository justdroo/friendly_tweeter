navigator.serviceWorker.register('./sw.js');

var button = document.getElementById('test-notification');

// window.setInterval( () => {
button.addEventListener('click', function() {

  Notification.requestPermission( () => {

    navigator.serviceWorker.ready
    .then( (registration) => {

      function httpGet(theUrl) {
        var xmlHttp = new XMLHttpRequest();
        xmlHttp.open( "GET", theUrl, false ); // false for synchronous request
        xmlHttp.send( null );
        return xmlHttp.responseText;
      }

      var newBody = httpGet('http://localhost:4567/')

      var options = {
        body: "",
        icon: 'https://www.gdnmobilelab.com/workshop/icon.png',
        badge: 'https://www.gdnmobilelab.com/workshop/badge.png',
        silent: true
      };

      registration.active.postMessage({
        title: newBody,
        options: options
      });
    })
  })
}, 10000);
