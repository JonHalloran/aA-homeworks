document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = e => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  const addPlace = e => {
    e.preventDefault();
    const form = e.target;
    const textField = form.getElementsByClassName("favorite-input")[0];

    const rests = document.getElementById("restaurants");
    rests.appendChild(textField.value);
    console.log(document);
    textField.value = "";
  };

  document.querySelectorAll("#restaurants li").forEach(li => {
    li.addEventListener("click", toggleLi);
  });
  document.querySelectorAll("#favorite-places").forEach(form => {
    form.addEventListener("submit", addPlace);
  });

  // adding SF places as list items

  // --- your code here!

  // adding new photos

  // --- your code here!
});
