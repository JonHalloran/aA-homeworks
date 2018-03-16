//
// function setTimeout(cb) {
//
// }

function callback()  {
  console.log("test");
}

function hammerTime (time) {
  setTimeout(()=> { console.log(`${time} is Time`)}, time)
}
