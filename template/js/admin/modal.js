$('.view-btn').on('click', function() {
    product_details_modal.show();
})
const $carousel = $('.carousel-main').flickity({pageDots: false, contain: true, wrapAround: true, imagesLoaded: true});
const $carousel_nav = $('.carousel-nav').flickity({asNavFor: $('.carousel-main')[0], pageDots: false, contain: true, imagesLoaded: true, setGallerySize: false});
const product_details_modal = new mdb.Modal($('#admin-product-modal'),{});
const blog_change_confirm_modal = new mdb.Modal($('#confirm-modal'), {});

$('#admin-product-modal').on('shown.mdb.modal.mdb.modal', function() {
    $('.carousel-main').flickity('resize');
    setTimeout(function() { $('.carousel-nav').flickity('resize'); }, 20)
})

let admin_mdal_tabs = $('#admin-product-modal .tab')
$(admin_mdal_tabs).on('click', function() {
    $(admin_mdal_tabs).removeClass('active');
    $(this).addClass('active');
    let tabs = $('.tab-content');
    const targetTab = $(this.dataset.modalTab);
    $(tabs).removeClass('show')
    $(targetTab).addClass('show');
    $('.carousel-main').flickity('resize');
    setTimeout(function() { $('.carousel-nav').flickity('resize'); }, 20)
})

$('#confirm-modal .modal-footer').on('click', '.btn-confirm-cancel, .btn-confirm-changed', function() {
    if ($(this).hasClass('btn-confirm-cancel')) {
        setTimeout(function() {
            editor.getContext().tool.save.removeAttribute('disabled');
        }, 10)
    }
    else if ($(this).hasClass('btn-confirm-changed')) {
        console.log('saved handled!')
    }
})

const editor = SUNEDITOR.create((document.getElementById('sample')),{
    font : [
        'Segoe UI',
        'Arial',
        'tahoma',
        'Verdana',
    ],
    defaultStyle: "font-size:15px; font-family: 'Segoe UI'",
    buttonList: [
        ['undo', 'redo'],
        ['font', 'fontSize', 'formatBlock'],
        ['paragraphStyle', 'blockquote'],
        ['bold', 'underline', 'italic', 'strike', 'subscript', 'superscript'],
        ['fontColor', 'hiliteColor', 'textStyle', 'removeFormat'],
        ['preview', 'fullScreen'],
        ['outdent', 'indent'],
        ['align', 'horizontalRule', 'list', 'lineHeight'],
        ['table', 'link', 'image', 'showBlocks', 'save'],
    ],
    callBackSave : function (contents, isChanged) {
        if (isChanged) blog_change_confirm_modal.show();
    },
    previewTemplate: `
    <section id="details-product">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tabs">
                        <div class="tablinks tablinks-is-active" data-tab-target="#tab-product-content">Mô tả sản phẩm</div>
                        <div class="tablinks"> Địa chỉ mua hàng</div>
                        <div class="tablinks"> Đánh giá sản phẩm</div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="tab-content-wrapper">
                        <section class="tab-content tab-is-active" id="tab-product-content">
                            {{contents}}
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        document.querySelector('body').classList.remove('sun-editor-editable');
    </script>
    `,
});

let preStoredImage = [
    {id: 1, src: 'https://hongsamkimy.vn/wp-content/uploads/2023/07/Untitled-design-2023-07-13T093015.683-jpg.webp'},
    {id: 2, src: 'https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-3-768x768.webp'},
    {id: 3, src: 'https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-2-768x768.webp'},
    {id: 4, src: 'https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-5-768x768.webp'},
    {id: 5, src: 'https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-4-768x768.webp'}
]
$('.input-images').imageUploader({
    preloaded: preStoredImage,
    imagesInputName: 'photos',
    preloadInputName: 'old-photos',
    maxFiles: 6
});

$('#input_price_product').on('change', function() {
    console.log($(this).val())
    let value = ($(this).val().replaceAll(',',''));
    if (!value.match(/^[0-9]+$/)) value = 0;
    $(this).val(new Intl.NumberFormat('en-US').format(value));
})

const asyncAutocomplete = document.querySelector('#async-brands');
const asyncFilter = async (query) => {
  const url = `https://dummyjson.com/products`;
  const response = await fetch(url);
  const data = await response.json();
  const filter = data.products.filter(({brand}) => brand.indexOf(query) >= 0);
  return filter;
};

new mdb.Autocomplete(asyncAutocomplete, {
  filter: asyncFilter,
  displayValue: (value) => value.brand
});