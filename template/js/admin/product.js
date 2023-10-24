$('.show-all-toggle').on('click', function() {
    $(this).toggleClass('active');
    $(this).text(`${$(this).hasClass('active')?'Ẩn bớt' : 'Hiện tất cả...'}`);
})

const customDatatable = document.getElementById('datatable-product');
new mdb.Datatable(customDatatable, {
    columns: [
      { label: 'Ảnh sản phẩm', field: 'image' },
      { label: 'Mã sản phẩm', field: 'id' },
      { label: 'Tên sản phẩm', field: 'name' },
      { label: 'Giá bán', field: 'price',},
    ],
  }, {
    hover: true, 
    maxHeight: '600px',
    fixedHeader: true,
    rowsText: 'Dòng trên một trang',
    ofText: 'trên',
    loadingMessage: 'Đang tải dữ liệu',
    loaderClass: 'bg-danger',
    loading: true
});

setTimeout(function() {
    mdb.Datatable.getInstance(customDatatable).update({
    rows: [
        {
            url: '../image/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp',
            id: 'CHS0001',
            name: 'Cao Hồng Sâm Seon Gold Hộp 2 Lọ 250g',
            price: '2.100.000',
        },
        {
            url: '../image/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp',
            id: 'CHS0001',
            name: 'Cao Hồng Sâm Seon Gold Hộp 2 Lọ 250g',
            price: '2.100.000',
        },
        {
            url: '../image/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp',
            id: 'CHS0001',
            name: 'Cao Hồng Sâm Seon Gold Hộp 2 Lọ 250g',
            price: '2.100.000',
        },
        {
            url: '../image/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp',
            id: 'CHS0001',
            name: 'Cao Hồng Sâm Seon Gold Hộp 2 Lọ 250g',
            price: '2.100.000',
        },
        {
            url: '../image/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp',
            id: 'CHS0001',
            name: 'Cao Hồng Sâm Seon Gold Hộp 2 Lọ 250g',
            price: '2.100.000',
        },
        {
            url: '../image/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp',
            id: 'CHS0001',
            name: 'Cao Hồng Sâm Seon Gold Hộp 2 Lọ 250g',
            price: '2.100.000',
        },
        {
            url: '../image/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp',
            id: 'CHS0001',
            name: 'Cao Hồng Sâm Seon Gold Hộp 2 Lọ 250g',
            price: '2.100.000',
        },
        ].map((row) => {
        return {
            ...row,
            price: `<span>${row.price}đ</span>`,
            image:`
            <div class="product-img">
                <img src="${row.url}" width="40px" height="40px" alt="">
            </div>
            `,
        };})
    }, {loading: false, selectable: true,})
}, 3000)