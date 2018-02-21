function applyFilter(){
  c_show = Array.from(cards).filter((card) => {
        console.log(card.dataset["baby"]);
        let booleans = ((card.dataset["baby"] === dataset_dummy["baby"] || card.dataset["baby"] === "true") && (card.dataset["handicapped"] === dataset_dummy["handicapped"] || card.dataset["handicapped"] === "true") && (card.dataset["bidet"] === dataset_dummy["bidet"] || card.dataset["bidet"] === "true"))
        let plies = (parseInt(card.dataset["tp"]) >= parseInt(dataset_dummy["tp"]))
        let price = (parseInt(card.dataset["price"]) >= parseInt(dataset_dummy["price"]))
        let style = (dataset_dummy["style"] === "all" || card.dataset["style"] === card.dataset["style"])
        return (booleans && style && price && plies)
      });
      console.log(c_show);
      cards.forEach(card => {card.style.display = "none"})
      c_show.forEach((card) => {
        card.style.display = "block";
      });
}

function filterBar() {
  const cards = document.querySelectorAll(".card");
  const inputs = document.querySelectorAll("input");
  let dataset_dummy = {};
  dataset_dummy["baby"]="false";
  dataset_dummy["bidet"]="false";
  dataset_dummy["handicapped"]="false";
  dataset_dummy["tp"]=0;
  dataset_dummy["price"]=0;
  dataset_dummy["style"] === "all"

  let c_show = cards;

  inputs.forEach((input)=>{
    input.addEventListener("click",(event)=>{
      console.log(input.name);
      console.log(input.checked)
      dataset_dummy[input.name] = input.checked.toString();
      filterBar();
    });

  });

  // document.getElementsByName("baby")[0].addEventListener("click",(event)=>{
  //   let state = event.target.checked
  //   console.log(event.target.checked);
  //   if (state === true){
  //     cards.forEach((card) => {
  //       if (card.dataset.baby === "false") {
  //         if (card.style.display === "none") {
  //           card.style.display = "block";
  //         } else {
  //           card.style.display = "none";
  //         }
  //       }
  //     })
  //   } else if (state === false){
  //     cards.forEach((card) => {
  //       card.style.display = "block";
  //     })
  //   }
  // })

}

export {filterBar, applyFilter};
