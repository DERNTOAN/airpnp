// function bool_params() {
//     t.boolean "handicapped"
//     t.integer "toilet_paper"
//     t.boolean "wipes"
//     t.boolean "baby"
//     t.boolean "bidet"
// }


function searchTest() {

document.querySelector("form").addEventListener("change", (event) => {
const client = algoliasearch("FTYOFX08N8", "525a7f9cb3575c8f76d4cf54fdd3fc80");
const index = client.initIndex('Bathroom');
console.log(index)
const inputs = document.querySelectorAll("input[type=checkbox]");
const select = document.querySelector("select");
const price = document.querySelector("input[type=number]");
let filters = ""
// inputs.forEach((input) => {
//   '${input.name}:${input.checked}' });
//         console.log(test);

index.search({
  filters: 'price<101'


 })
  .then(function searchDone(content) {
    console.log(content)
  })
  .catch(function searchFailure(err) {
    console.error(err);
  });
})
}

function feature() {
//   document.getElementById("search").addEventListener("keyup", (event) => {
//   console.log("test");


// });
}

export { searchTest, feature}
