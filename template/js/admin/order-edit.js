const products = [
    {
        name: 'Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g',
        price: '980.000₫',
        id: 'CHS013912',
        remains: 15,
    },
    {
        name: 'Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g',
        price: '980.000₫',
        id: 'CHS013912',
        remains: 15,
    },
    {
        name: 'Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g',
        price: '980.000₫',
        id: 'CHS013912',
        remains: 15,
    },
    {
        name: 'Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g',
        price: '980.000₫',
        id: 'CHS013912',
        remains: 15,
    },
    {
        name: 'Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g',
        price: '980.000₫',
        id: 'CHS013912',
        remains: 15,
    },
    {
        name: 'Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g',
        price: '980.000₫',
        id: 'CHS013912',
        remains: 15,
    },
]
const dataTable = new DataTable('#products_filter_table', {
    dom: 'ti',
    paging: false,
    scrollCollapse: true,
    scrollY: '400px',
    data: products,
    columnDefs: [
        {
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
                        <img src="" alt="">
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
            target: 2, 
            data: 'remains',
            className: 'dt-center'
        },
    ],
    select: {
        style: 'single',
        selector: 'td:first-child .form-check-input'
    },
    order: [[1, 'asc']],
});

