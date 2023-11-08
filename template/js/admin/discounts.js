const translate = {
    "decimal":        "",
    "emptyTable":     "Không có dữ liệu trong table",
    "info":           "Hiển thị từ dòng _START_ đến dòng _END_ trong tổng số _TOTAL_",
    "infoEmpty":      "Showing 0 to 0 of 0 entries",
    "infoFiltered":   "(Lọc ra trong _MAX_ dòng)",
    "infoPostFix":    "",
    "thousands":      ",",
    "lengthMenu":     "Hiển thị tối đa _MENU_ dòng",
    "loadingRecords": "Đang load...",
    "processing":     "",
    "search":         "Tìm kiếm",
    "zeroRecords":    "Không tìm thấy trường nào.",
    "paginate": {
        "first":      "Đầu tiên",
        "last":       "Cuối cùng",
        "next":       "Tiếp theo",
        "previous":   "Trước đó"
    },
    "aria": {
        "sortAscending":  ": activate to sort column ascending",
        "sortDescending": ": activate to sort column descending"
    }
};
const status_badget = {
    active: '<span class="badge badge-success w-100">Hoạt động</span>',
    deactive: '<span class="badge badge-danger w-100">Vô hiệu</span>',
}
const data_tables = new DataTable('#table_customers', {
    ajax: '/template/admin/discounts.txt',
    language: translate,
    dom: 'tip',
    scrollCollapse: true,
    scrollY: '400px',
    order: [[1, 'asc']],
    autoWidth: true,

    columns: [
        {
            data: 'id'
        },
        {
            data: 'code',
            width: 1,
            className: 'dt-nowrap',
            render: function(data, type, row) {
                return `
                <div class="d-inline-block">
                    <span style="display: none">${data}</span>
                    <input type="text" value="${data}" disabled style="width: 200px; cursor: text">
                </div>
                `
            }
        },
        {
            width: 1,
            className: 'dt-nowrap',
            data: 'name',
        },
        {
            width: 1,
            className: "dt-nowrap",
            data: 'product.name',
            render: function(data, type, row) {
                const html = `
                    <div class="product-wrap d-flex align-items-center gap-2">
                        <div class="product-img">
                            <img src="${row.product.image}" alt="">
                        </div>
                        <div class="product-info d-flex flex-column justify-content-center">
                            <div class="fw-semibold product-name">${row.product.name}</div>
                            <div class="fw-light">Mã sản phẩm: ${row.product.id}</div>
                        </div>
                    </div>
                `
                return html;
            }
        },
        {
            className: 'dt-nowrap',
            width: 10,
            data: 'value',
            render: function(data) {
                return `<div class="fw-semibold text-primary">- ${data}%</div>`
            }
        },
        {
            className: "dt-nowrap",
            width: 10,
            orderable: false,
            render: function(data, type, row) {
                const html = `
                    <div class="${row.status === 'active' ? 'text-success' : 'text-danger'} fw-semibold">
                        ${row.start} ~ ${row.end}
                    </div>
                `
                return html;
            },
            defaultContent: '10/07/2023 ~ 10/10/2024'
        },
        {
            orderable: false,
            className: "dt-nowrap",
            width: 1,
            data: 'status',
            defaultContent: 'tình trạng',
            render: function(data, type, row) {
                return status_badget[data]
            }
        },
        {
            className: 'dt-nowrap dt-right',
            width: 1,
            data: null,
            orderable: false,
            render: function(data) {
                const html = `
                <div class="action-btns">
                    <a href="#admin_product_modal" class="btn-modal" data-discounts-id="${data.id}">
                        <i class="fa-solid fa-edit view-btn" data-mdb-toggle="tooltip" title="Chỉnh sửa"></i>
                    </a>
                    <i class="fa-solid fa-circle-xmark remove-btn" data-mdb-toggle="tooltip" title="Xóa đơn hàng"></i>
                </div>
                `
                return html;
            }
        },
    ],
});
new mdb.Select($('#status_filter')[0], {
    clearButton: true,
})
$('.select-clear-btn').css({display: 'none'});
$('#date_picker').daterangepicker({
    locale: {
        format: 'DD/MM/YYYY'
    },
    linkedCalendars: false,
    alwaysShowCalendars: true,
    drop: "auto",
    autoUpdateInput: false,
}, function(start, end, label) {
  console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
});

$('#date_picker').on('apply.daterangepicker', function(ev, picker) {
    $(this).val(picker.startDate.format('DD/MM/YYYY') + ' - ' + picker.endDate.format('DD/MM/YYYY'));
})

$('#date_picker').on('cancel.daterangepicker', function(ev, picker) {
    $(this).val('');
});

sidebar.addEventListener('transitionend', function(event) {
    if (event.propertyName !== 'width') return;
    console.log(`transtion ended`)
    data_tables.columns?.adjust();
})

const customItemAutocomplete = document.querySelector('#customItem');
const async_data = async (value) => {
    const url = "/template/admin/discounts.txt";
    const response = await fetch(url);
    let {data} = await response.json();
    const product_list = data.map(o => o.product);
    return product_list.filter(product => {
        return product.name.toLowerCase().startsWith(value.toLowerCase());
    });
}

new mdb.Autocomplete(customItem, {
  filter: async_data,
  displayValue: (product) => product.id,
  itemContent: (product) => {
    const html = `
        <div class="product-wrap d-flex align-items-center gap-2">
            <div class="product-img">
                <img src="${product.image}" alt="">
            </div>
            <div class="product-info d-flex flex-column justify-content-center">
                <div class="fw-semibold product-name input">${product.name}</div>
                <div class="fw-light">Mã sản phẩm: ${product.id}</div>
            </div>
        </div>
    `
    return html;
  },
});
const discounts_modal = new mdb.Modal($('#admin_product_modal')[0]);
$('#table_customers_wrapper').on('click', '.btn-modal', function() {
    discounts_modal.show()
})

$('#input_date_range').daterangepicker({
    locale: {
        format: 'DD/MM/YYYY'
    },
    linkedCalendars: false,
    alwaysShowCalendars: true,
    drop: "auto",
    autoUpdateInput: false,
}, function(start, end, label) {
  console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
});

$('#input_date_range').on('apply.daterangepicker', function(ev, picker) {
    $(this).val(picker.startDate.format('DD/MM/YYYY') + ' ~ ' + picker.endDate.format('DD/MM/YYYY'));
})

$('#input_date_range').on('cancel.daterangepicker', function(ev, picker) {
    $(this).val('');
});