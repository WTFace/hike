var Observable = require("FuseJS/Observable");
var Backend = require("./Backend");
var hikes = Observable();

module.exports= {
	hikes: hikes,
	updateHike: updateHike,
}

Backend.getHikes().then(function(newHikes) {
	hikes.replaceAll(newHikes);
}).catch(function(error) {
	console.log("couldn't get hikes: " + error);
});

function updateHike(id, name, location, distance, rating, comments) {
    for (var i = 0; i < hikes.length; i++) {
        var hike = hikes.getAt(i);
        if (hike.id == id) {
            hike.name = name;
            hike.location = location;
            hike.distance = distance;
            hike.rating = rating;
            hike.comments = comments;
            hikes.replaceAt(i, hike);
            break;
        }
    }
    Backend.updateHike(id, name, location, distance, rating, comments)
        .catch(function(error) {
            console.log("Couldn't update hike: " + id);
        });
}
