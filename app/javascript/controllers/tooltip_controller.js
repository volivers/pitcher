import tippy from 'tippy.js';
import 'tippy.js/dist/tippy.css'; // optional for styling

import { Controller } from 'stimulus';

export default class extends Controller {
  connect() {
    const options = {
      duration: 0,
      arrow: true,
      delay: [500, 200],
      content: this.content
    }
    // the attribute data-tippy-content is used, NO data-tooltip-content !!!
    this.tooltip = tippy(this.element, this.options);
  }
};
