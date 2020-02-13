document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const sfSubmit = function (e) {
    e.preventDefault();
    const t = e.currentTarget
    const input = document.querySelector(".favorite-input")
    debugger;
    const li = document.createElement("li")
    li.textContent = input.value
    const sfplaces = document.getElementById("sf-places")
    sfplaces.append(li)
    input.value = ""
  }

  form = document.querySelector("form")

  form.addEventListener("submit", sfSubmit)

  

  // adding new photos
  dogButton = document.querySelector(".photo-show-button")
  dogButton.addEventListener("click", (e) => {
    let photo = document.querySelector(".photo-form-container")
    if (photo.className === "photo-form-container hidden") {
      photo.classList.remove("hidden")
    } else {
      photo.className = "photo-form-container hidden"
    }
  })

  const dogform = document.querySelector(".photo-form-container")
  dogform.addEventListener("submit", (el) => {
    el.preventDefault()
    input = document.querySelector(".photo-url-input")
    const li = document.createElement("li")
    const img = document.createElement("img")
    img.src = input.value
    li.append(img)
    const ul = document.querySelector(".dog-photos")
    ul.append(li)
    input.value = ""
  })

  

});
