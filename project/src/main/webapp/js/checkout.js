'use strict';
const gWrap_method = $('.method-wrap');
[...$('.method-description')].forEach(e => {
    return new mdb.Collapse(e, {
        toggle: false,
        parent: gWrap_method[0]
    })
})

$('.method-radio-btn').on('change', function() {
    mdb.Collapse.getInstance($(`${this.dataset.descTarget}`)).show();
})