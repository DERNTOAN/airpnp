

function newFilter() {
document.getElementById("search-btn").addEventListener("click", (event) => {
const form = document.querySelector("form")
let query = ""
form.querySelectorAll('input').forEach((element) => {
if (element['id']) {
  query = query + element['id'].substring(9) + "=" + element['value'] + "&"
console.log(query)
}


});
  fetch("http://localhost:3000/api/v1/bathrooms?" + query)
  .then(response => response.json())
  .then((data) => {
console.log(data)


    // console.log(data);
  });
});
}













































function applyFilter(dataset_dummy){
  const cards = document.querySelectorAll(".card");
  let c_show = cards;
  c_show = Array.from(cards).filter((card) => {
    let booleans = ((card.dataset["baby"] === dataset_dummy["baby"] || card.dataset["baby"] === "true") && (card.dataset["handicapped"] === dataset_dummy["handicapped"] || card.dataset["handicapped"] === "true") && (card.dataset["bidet"] === dataset_dummy["bidet"] || card.dataset["bidet"] === "true"))
    let plies = (parseInt(card.dataset["tp"]) >= parseInt(dataset_dummy["tp"]))
    let price_result = (parseInt(card.dataset["price"]) <= dataset_dummy["price"])
    let style = (dataset_dummy["style"] === "all" || card.dataset["style"] === dataset_dummy["style"])
    return (booleans && price_result && plies && style)
      });
      cards.forEach(card => {card.style.display = "none"})
      c_show.forEach((card) => {
        card.style.display = "block";
      });
    }

    function filterBar() {
      const cards = document.querySelectorAll(".card");
      const inputs = document.querySelectorAll("input[type=checkbox]");
      const select = document.querySelector("select");
      const price = document.querySelector("input[type=number]");
      let dataset_dummy = {};
      dataset_dummy["baby"]="false";
      dataset_dummy["bidet"]="false";
      dataset_dummy["handicapped"]="false";
      dataset_dummy["tp"]=0;
      dataset_dummy["price"]=200;
      dataset_dummy["style"] = "all";

      inputs.forEach((input)=>{
        if (input){input.addEventListener("click",(event)=>{
        dataset_dummy[input.name] = input.checked.toString();
        applyFilter(dataset_dummy);
      });
      }
    });

    if (select) {select.addEventListener("change",(event)=>{
        dataset_dummy["style"] = select.value;
        applyFilter(dataset_dummy);
      });
    }

    if (price) {price.addEventListener("change",(event)=>{
      dataset_dummy["price"] = parseInt(price.value);
      applyFilter(dataset_dummy);
    });
  }
}

export {newFilter, filterBar, applyFilter};
