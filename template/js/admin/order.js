
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
const categories = {
    'cao_hong_sam' : 'Cao Hồng Sâm'
}
new DataTable('#product_table', {
    ajax: '/template/admin/orders.txt',
    language: translate,
    columns: [
        {
            data: 'id'
        },
        {
            data: 'customer'
        },
        {
            data: 'price',
            render: function(data) {
                return new Intl.NumberFormat('en-US').format(data)
            }
        },
        {
            data: 'phone'
        },
        {
            data: 'email'
        },
        {
            data: 'status',
            render: function(data) {
                return `<span class="badge badge-warning">${data}</span>`
            }
        },
        {
            data: 'create'
        },
        {
            data: null,
            render: function() {
                const html = `
                <div class="action-btns">
                    <a href="/template/details_product.html" data-mdb-toggle="tooltip" title="Xem chi tiết đơn hàng">
                        <i class="fa-solid fa-eye remove-btn"></i>
                    </a>
                    <i class="fa-solid fa-edit view-btn" data-mdb-toggle="tooltip" title="Chỉnh sửa" data-product-id = 'VZ120001'></i>
                    <i class="fa-solid fa-circle-xmark remove-btn" data-mdb-toggle="tooltip" title="Xóa đơn hàng"></i>
                </div>
                `
                return html;
            }
        },
    ],
    initComplete: function () {
        this.api()
            .columns()
            .every(function (index) {
                let column = this;
                if (index == 5) {
                    let select = document.createElement('select');
                    this
                        .data()
                        .unique()
                        .each(function (value, index) {
                            select.add(new Option(value));
                        })
                        column.footer().replaceChildren(select);
                        select.addEventListener('change', function () {
                            var val = DataTable.util.escapeRegex(select.value);
         
                            column
                                .search(val ? '^' + val + '$' : '', true, false)
                                .draw();
                        });
                        return;
                }
                let title = column.header().textContent;
 
                // Create input element
                let input = document.createElement('input');
                input.classList.add('filter')
                input.placeholder = title;
                column.footer().replaceChildren(input);
                
                // Event listener for user input
                input.addEventListener('keyup', () => {
                    if (column.search() !== this.value) {
                        column.search(input.value).draw();
                    }
                });
            });
    }
});