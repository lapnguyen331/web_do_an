const id = $('#order-item').val();
let orderItems = undefined;
let order = undefined;
let customer = undefined;
const loadCustomerData = async function() {
    const userid = $('#userid').val();
    const json = await $.ajax({
        url: `${window.context}/api/customer/getUser?id=${userid}`,
        method: 'get',
        dataType: 'json'
    })
    customer = json.data
};
const loadOrderItemsData = async function () {
    const json = await $.ajax({
        url: `${window.context}/api/order/getOrderItems?id=${id}`,
        method: 'get',
        dataType: 'json'
    })
    orderItems = json.data
};
(async function() {
    await loadOrderItemsData();
    const items = orderItems;
    let price = 0;
    for (let i = 0; i < items.length; i++) {
        price += items[i].price
        const product = items[i].product;
        const html = `
                <div class="product-card">
                    <div class="img-wrap">
                        <img src="${window.context}/files/${product.image}" width='100%' alt="">
                    </div>
                    <div class="info-wrap">
                        <div class="product-title">${product.name}</div>
                        <div class="product-price">Giá bán: ${product.price}</div>
                        <div class="id-wrap">
                            <div class="product-id">Mã SP: ${product.id}</div>
                            <div class="number-field">
                                <button class="up">
                                    <span>+</span>
                                </button>
                                <input type="text" name="" id="" value=${items[i].quantity}>
                                <button class="down">
                                    <span>-</span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="remove-btn">
                        <i class="fa-solid fa-circle-xmark"></i>
                    </div>
                </div>
                `
        $('.products-range').append(html);
    }
    $('#total-price').text(String(price).replace(/(?<=\d)(?=(\d{3})+(?!\d))/g, "."))
})();
(async function() {
    await loadCustomerData();
    $('#username').val(customer[0].username)
    $('#user-avatar').attr('src', `${window.context}/files/${customer[0].avatar}`)
    $('#user-fullname').text(customer[0].name)
})();
const dataTable = new DataTable('#products_filter_table', {
    dom: 'ti',
    paging: false,
    scrollCollapse: true,
    scrollY: '400px',
    width: '100%',
    ajax: `${window.context}/api/product/getAll`,
    columnDefs: [
        {
            width: 1,
            className: 'dt-nowrap',
            target: 0, 
            className: 'select-checkbox',
            orderable: false,
            data: null,
            render: function() {
                return `<input class="form-check-input" type="checkbox" value=""/>`
            }
        },
        {
            target: 0,
            className: 'dt-center'
        },
        {
            target: 1,
            data: null,
            render: function(data, type) {
                const html = `
                <div class="product-wrap">
                    <div class="img-wrap">
                        <img src="${window.context}/files/${data.image}" width="100%" alt="">
                    </div>
                    <div class="info-wrap">
                        <div class="product-title">${data.name}</div>
                        <div class="product-price">Giá bán: ${data.price}</div>
                        <div class="id-wrap">
                            <div class="product-id">Mã SP: ${data.id}</div>
                        </div>
                    </div>
                </div>
                `;
                if (type === 'display') return html;
                else
                    return data.name;
            }
        },
        {
            data: 'quantity',
            target: 2,
            className: 'dt-center dt-nowrap',
            width: 1
        },
    ],
    select: {
        style: 'single',
        selector: 'td:first-child .form-check-input'
    },
    order: [[1, 'asc']],
});

$('#txt_date').daterangepicker({
    "singleDatePicker": true,
    locale: {
        format: 'DD/MM/YYYY hh:mm A'
    }
}, function(start, end, label) {
  console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
});

const basicAutocomplete = document.querySelector('#search-autocomplete');
const data = ['One', 'Two', 'Three', 'Four', 'Five'];
const asyncFilter = async (query) => {
  const url = `https://dummyjson.com/products`;
  const response = await fetch(url);
  const data = await response.json();
  const filter = data.products.filter(({brand}) => brand.indexOf(query) >= 0);
  return filter;
};

new mdb.Autocomplete(basicAutocomplete, {
  filter: asyncFilter,
  displayValue: (value) => value.brand
});