function stepperToggle() {
  const pitchNew = document.querySelector('.pitches.new');
  const pitchEdit = document.querySelector('.pitches.edit');
  const personaNew = document.querySelector('.personas.new');
  const personaEdit = document.querySelector('.personas.edit');
  const journeysNew = document.querySelector('.userjourneys.new');
  const journeysEdit = document.querySelector('.userjourneys.edit');
  const flowShow = document.querySelector('.userjourneys.show');
  const stepperItemOne = document.querySelector("#breadcrumb-1");
  const stepperItemTwo = document.querySelector("#breadcrumb-2");
  const stepMarker = document.querySelector(".circle-marker")

  if (pitchNew || pitchEdit) {
    stepMarker.style.transform = "translateX(7vw)";
    stepperItemOne.classList.add('active');
  } else if (personaNew || personaEdit) {
    stepMarker.style.transform = "translateX(21.5vw)";
    stepperItemTwo.classList.add('active');
  } else if (journeysNew || journeysEdit) {
    stepMarker.style.transform = "translateX(35vw)";
    stepperItemTwo.classList.add('active');
  } else if (flowShow) {
    stepMarker.style.transform = "translateX(50vw)";
    stepperItemTwo.classList.add('active');
  }
};

export { stepperToggle };
