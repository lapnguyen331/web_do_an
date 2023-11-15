'use strict';
$('#input-images').imageUploader();
$('#txt_date').daterangepicker({
    "singleDatePicker": true,
}, function(start, end, label) {
  console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
});
$('#images_gallery_product').imageUploader({
    preloaded: undefined,
    imagesInputName: 'photos',
    preloadInputName: 'old-photos',
    maxFiles: 6
});

const editor = SUNEDITOR.create((document.getElementById('suneditor')),{
    font : [
        'Segoe UI',
        'Arial',
        'tahoma',
        'Verdana',
    ],
    height: '250px',
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

const async_data_blog = async (value) => {
    const url = "/template/blog.txt";
    const response = await fetch(url);
    let {data} = await response.json();
    return data.filter(blog => {
        return blog.title.toLowerCase().startsWith(value.toLowerCase());
    });
}

new mdb.Autocomplete($('#box_blog_filter')[0], {
    filter: async_data_blog,
    displayValue: (blog) => blog.id,
    itemContent: (blog) => {
      const html = `
        <div class="blog-selector-wrap">
            <div class="img-wrap">
                <img src="${blog.img}" alt="">
            </div>
            <div class="blog-info">
                <div class="fw-semibold blog-title">
                    ${blog.title}
                </div>
                <div class="fw-normal blog-id">
                    Mã: ${blog.id}
                </div>
            </div>
        </div>
      `
      return html;
    },
});

$('#box_blog_filter').on('itemSelect.mdb.autocomplete', async function(e) {
    await $.ajax({
        url: e.value.content,
        success: data => {
            let html = JSON.parse(data)
            editor.setContents(html)
            editor.readOnly(true)
        }
    })
})