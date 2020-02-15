const showAutocomplete = () => {

  // select our input
  var searchInput = document.getElementById('search-query');
  //console.log ("searchInput: ", searchInput)
  // add event on user input
  searchInput.addEventListener ('input', function (event) {

  // determine the value of the input
  //console.log ("event.currentTarget.value: ", event.currentTarget.value)
  // select our autocomplete div
    var autocompleteList = document.getElementById('autocomplete-ul');

    autocompleteList.innerHTML = "";

  // populate ul with 4 random <li>
    autocompleteList.insertAdjacentHTML("beforeend", "<li>My new li</li>")
    autocompleteList.insertAdjacentHTML("beforeend", "<li>My new li 2</li>")
    autocompleteList.insertAdjacentHTML("beforeend", "<li>My new li 3</li>")
    autocompleteList.insertAdjacentHTML("beforeend", "<li>My new li </li>")
    console.log ("autocompleteList: ", autocompleteList)

  //


  });
}

export { showAutocomplete }
