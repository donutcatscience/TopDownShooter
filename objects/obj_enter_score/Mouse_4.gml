/// @description Insert description here
// You can write your code in this editor
enteredName = get_string("Your score was: " + string(score) + "\nEnter your name:", "");
requestString ="{\"PlayerName\" : \"" + string(enteredName) + "\", \"PlayerScore\" : \"" + string(score) +"\"}";
http_request("https://makinggamesdb-d8fb.restdb.io/rest/topdownshooter", "POST", map1, requestString);