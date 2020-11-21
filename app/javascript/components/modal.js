const validFalseDemo = (e) => {
  //let dashboardPage = document.querySelector('.demos.dashboard');
  let modalExists = document.querySelector('#demoModal')

  if(modalExists) {
    let demoValid = modalExists.dataset.valid;
    // console.log("HEY!!", demoValid)
    if(demoValid == 'false') {
      let button = document.getElementById('buttonModal');
      button.click();
    }
  }
}

export { validFalseDemo };