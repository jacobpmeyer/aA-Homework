console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  type: 'GET',
  url: "http://api.openweathermap.org/data/2.5/weather?id=5263045&appid=bcb83c4b54aee8418983c2aff3073b3b",
  success(data) {
    console.log("This is the weather for milwaukee!")
    console.log(data);
  },
  error() {
    console.error("An error occured")
  }
})
// Add another console log here, outside your AJAX request

console.log("This is after the ajax request")

