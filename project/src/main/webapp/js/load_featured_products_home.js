'use strict';
(async function() {
    let products = await fetch(`${window.contextPath}/js/fake_data/products-2.txt`);
    products = await products.json();
    products.data.sort(() => 0.5 - Math.random());
    for (let i = 0; i < 4; i++) {
        const html = `
            <div class="col-md-3">
                <div class="product-card">
                    <a href="#">
                        <div class="product-img">
                            <img src="${products.data[i].images[0]}" alt="">
                        </div>

                        <div class="product-name">
                            <p>${products.data[i].name}</p>
                        </div>
                    </a>
                    <div class="product-price-wrapper">
                        <div class="discount-label">-${products.data[i].discount}%</div>
                        <div class="price">
                            <p class="m-price">${products.data[i].price}</p>
                            <p class="c-price">${products.data[i].price}</p>
                        </div>
                    </div>
                    <div class="product-button">
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-store-cart">
                                Thêm vào giỏ
                            </button>
                        </div>
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-details">
                                <a href="/template/details_product.html" class="move-to-details">Xem chi tiết</a>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        `;
        $('#home-featured-products-section .featured-row').append(html)
    }
})();