

import Page from './page.js';

/**
 * sub page containing specific selectors and methods for a specific page
 */
class checkPage extends Page {
    /**
     * define selectors using getter methods
     */
    get flashAlert () {
        return $('#flash');
    }
}

export default new checkPage();
