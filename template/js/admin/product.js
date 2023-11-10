$('.show-all-toggle').on('click', function() {
    $(this).toggleClass('active');
    $(this).text(`${$(this).hasClass('active')?'Ẩn bớt' : 'Hiện tất cả...'}`);
});

[...$('.product-more-info')].forEach(e => new mdb.Collapse(e, {toggle: false}))

$('.collapse-toggle').on('change', function() {
    let target = $(this).siblings().filter('.product-more-info')[0];
    if ($(this).is(':checked')) mdb.Collapse.getInstance(target).show();
    else mdb.Collapse.getInstance(target).hide();
})