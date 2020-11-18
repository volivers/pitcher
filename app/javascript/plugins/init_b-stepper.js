import Stepper from 'bs-stepper'

const initBStepper = () => {
  let element = document.querySelector('.bs-stepper')
  if (element) {
    let stepper = new Stepper(element);
    // console.log(stepper)
  };

  // /// Will navigate to the second step
  // stepper.to(2)
};

export { initBStepper }