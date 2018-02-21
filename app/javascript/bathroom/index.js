function applyFilter(dataset_dummy){
  const cards = document.querySelectorAll(".card");
  let c_show = cards;
  console.log(dataset_dummy["style"])
  c_show = Array.from(cards).filter((card) => {
        console.log(card.dataset["style"])

        let booleans = ((card.dataset["baby"] === dataset_dummy["baby"] || card.dataset["baby"] === "true") && (card.dataset["handicapped"] === dataset_dummy["handicapped"] || card.dataset["handicapped"] === "true") && (card.dataset["bidet"] === dataset_dummy["bidet"] || card.dataset["bidet"] === "true"))
        let plies = (parseInt(card.dataset["tp"]) >= parseInt(dataset_dummy["tp"]))
        let price = (parseInt(card.dataset["price"]) >= parseInt(dataset_dummy["price"]))
        let style = (dataset_dummy["style"] === "all" || card.dataset["style"] === dataset_dummy["style"])
        return (booleans && style && price && plies)
      });
      console.log(c_show);
      cards.forEach(card => {card.style.display = "none"})
      c_show.forEach((card) => {
        card.style.display = "block";
      });
}

function filterBar() {
  console.log("test");
  const cards = document.querySelectorAll(".card");
  const inputs = document.querySelectorAll("input[type=checkbox]");
  const select = document.querySelector("select");
  let dataset_dummy = {};
  dataset_dummy["baby"]="false";
  dataset_dummy["bidet"]="false";
  dataset_dummy["handicapped"]="false";
  dataset_dummy["tp"]=0;
  dataset_dummy["price"]=0;
  dataset_dummy["style"] === "all";

  inputs.forEach((input)=>{
    input.addEventListener("click",(event)=>{
      console.log(input.name);
      console.log(input.checked)
      dataset_dummy[input.name] = input.checked.toString();
      applyFilter(dataset_dummy);
    });
  });

  select.addEventListener("change",(event)=>{
    console.log(select.value);
    dataset_dummy["style"] = select.value;
    applyFilter(dataset_dummy);
  });
}

export {filterBar, applyFilter};
