
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
const data_tables = new DataTable('#table_orders', {
    ajax: '/template/user-profile-orders.txt',
    language: translate,
    dom: 'tip',
    createdRow: function( row, data, dataIndex ) {
            $(row).addClass('abc')
    },
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
       
    ],
});


//init
(function() {
    $('#table_tabs').on('click', 'li', function() {
        const lis = $(this).siblings().filter('li');
        $(lis).removeClass('active');
        $(this).addClass('active')
    })
    
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
    
    new mdb.Select($('#status_filter')[0], {
        clearButton: true,
    })
    $('.select-clear-btn').css({display: 'none'});

})();
// direct order-detail
$('#table_orders').on('click', 'tbody tr', function() {
        
})