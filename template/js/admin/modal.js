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
editor.onSave = function (contents, core) {console.log(contents) };