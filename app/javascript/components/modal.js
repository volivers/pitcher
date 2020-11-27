const validFalseDemo = (e) => {
  //let dashboardPage = document.querySelector('.demos.dashboard');
  let demoModalExists = document.querySelector('#demoModal')

  if(demoModalExists) {
    let demoValid = modalExists.dataset.valid;
    // console.log("HEY!!", demoValid)
    if(demoValid == 'false') {
      let button = document.getElementById('buttonModal');
      button.click();
    }

  }
  let onboardingModalExists = document.querySelector('#onboarding')

  if(onboardingModalExists) {

    onboardingModalExists.click(function() {
      console.log("HEY!!", demoValid)
      //var modalDiv = $('#myModal');
      this.modal({backdrop: false});
      console.log("HEY!!", demoValid)
      // $('.modal-dialog').draggable({
      //   handle: ".modal-header"
      // });
    });

  }
}

export { validFalseDemo };
