$('.show-all-toggle').on('click', function() {
    $(this).toggleClass('active');
    $(this).text(`${$(this).hasClass('active')?'Ẩn bớt' : 'Hiện tất cả...'}`);
});


$('.product-list-body').on('change', '.collapse-toggle', function() {
    let target = $(this).siblings().filter('.product-more-info')[0];
    if ($(this).is(':checked')) mdb.Collapse.getInstance(target).show();
    else mdb.Collapse.getInstance(target).hide();
});
(async function() {
    await new Promise((resolve) => setTimeout(resolve, 1000));
    $.ajax({
        url: '/template/products-2.txt',
        success: function(data) {
            const products = JSON.parse(data).data;
            $('.product-list-body').html('');
            products.sort(() => 0.5 - Math.random()).forEach(data => {
                const html = `
                <div class="product-grid product-info">
                    <input class="form-check-input justify-self-center collapse-toggle"
                        type="checkbox">
                    <div class="img-product">
                        <img src="${data.images[0]}" width="100%" alt="">
                    </div>
                    <span class="id-product">${data.id}</span>
                    <span>${data.name}</span>
                    <span>${data.price}</span>
                    <span>15</span>
                    <div class="product-more-info collapse">
                        <div class="product-wrap">
                            <div class="img-product">
                                <img src="${data.images[0]}" width="100%" alt="">
                            </div>
                            <div class="more-stats">
                                <div class="stat">
                                    <label>Tên sản phẩm</label>
                                    <span>${data.name}</span>
                                </div>
                                <div class="stat">
                                    <label>Giá bán</label>
                                    <span>${data.price}</span>
                                </div>
                                <div class="stat">
                                    <label>Mã sản phẩm</label>
                                    <span>${data.id}</span>
                                </div>
                                <div class="stat">
                                    <label>Quy cách</label>
                                    <span>${data.specific}</span>
                                </div>
                                <div class="stat">
                                    <label>Tồn kho</label>
                                    <span>15</span>
                                </div>
                                <div class="stat">
                                    <label>Thương hiệu</label>
                                    <span>Seon Gold</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="action-btns">
                        <i class="fa-regular fa-circle-xmark remove-btn" data-mdb-toggle="tooltip" title="Xóa sản phẩm"></i>
                        <i class="fa-regular fa-edit view-btn" data-mdb-toggle="tooltip" title="Chỉnh sửa" data-product-id = 'CHS013912'></i>
                        <a href="/template/details_product.html" data-mdb-toggle="tooltip" title="Xem trang sản phẩm"><i class="fa-regular fa-eye remove-btn"></i></a>
                    </div>
                </div>
                `
                $('.product-list-body').append(html);
                [...$('.product-more-info')].forEach(e => new mdb.Collapse(e, {toggle: false}))
            })
        }
    })
})();