'use strict';
$(document).ready(function() {
    let cart = $('#my-cart .cart-products');
    let toast = $('#message-toasts');
    let cartData;
    const loadData = function() {
        $.ajax({
            url: `${window.context}/cartAction`,
            method: 'POST',
            data: {
                action: 'get'
            },
            success: (data) => {
                cartData = data;
                refreshCart();
            }
        })
    }
    $(document).on('click', '*[data-cart-product=true]', function(e) {
        const id = this.dataset.cartId;
        switch (this.dataset.cartAction) {
            case "add":
                $.ajax({
                    url: `${window.context}/cartAction`,
                    method: 'POST',
                    data: {
                        action: 'add',
                        productId: id,
                    },
                    success: ({status, msg}) => {
                        announce("Thông báo", msg)
                        loadData();
                    }
                })
                break;
            case "remove":
                $.ajax({
                    url: `${window.context}/cartAction`,
                    method: 'POST',
                    data: {
                        action: 'remove',
                        productId: id,
                    },
                    success: ({status, msg}) => {
                        announce("Thông báo", msg)
                        loadData();
                    }
                })
                break;
            case "increase":
                $.ajax({
                    url: `${window.context}/cartAction`,
                    method: 'POST',
                    data: {
                        action: 'increase',
                        productId: id,
                    },
                    success: ({status, msg}) => {
                        announce("Thông báo", msg)
                        loadData();
                    }
                })
                break;
            case "decrease":
                $.ajax({
                    url: `${window.context}/cartAction`,
                    method: 'POST',
                    data: {
                        action: 'decrease',
                        productId: id,
                    },
                    success: ({status, msg}) => {
                        announce("Thông báo", msg)
                        loadData();
                    }
                })
                break;
        }
    })
    const announce = function(title, msg) {
        toast.find('.toast-body').text(msg);
        toast.find('.toast-header strong').text(title);
        mdb.Toast.getInstance(toast).show();
    }
    const refreshCart = function () {
        cart.empty();
        if (cartData.length == 0) {
            const html = `
                <div class="text-center text-danger">Giỏ hàng hiện đang trống...</div>
            `
            cart.append(html);
            return;
        }
        cartData.forEach(element => {
            const product = element.item.product;
            console.log(product)
            const html = `
          <div class="product-wrap d-flex align-items-center gap-2">
            <div class="btn-product-remove" data-cart-product="true" data-cart-action="remove" data-cart-id="${product.id}">
                <i class="fa-regular fa-trash-can"></i>
            </div>
            <div class="img-wrap border rounded d-flex align-items-center justify-content-center">
                <img src="${product.avatar.url}" width="100%">
            </div>
            <div class="d-flex flex-column justify-content-center">
                <div class="product-name">
                    ${product.name}
                </div>
                <div class="text-primray-red-color-main fw-bold">
                    ${Number.parseInt(product.price * 1000)}
                </div>
            </div>
            <div class="amount-btns">
                <div class="bg-primary-red-main-color text-wheat-color d-flex align-items-center arrow-wrap">
                    <div class="arrow arrow-down" data-cart-product="true" data-cart-action="decrease" data-cart-id="${product.id}"></div>
                </div>
                <input type="text" class="text-center" disabled value="${element.item.quantity}">
                <div class="bg-primary-red-main-color text-wheat-color d-flex align-items-center arrow-wrap">
                    <div class="arrow arrow-up" data-cart-product="true" data-cart-action="increase" data-cart-id="${product.id}"></div>
                </div>
            </div>
        </div>
        `
            cart.append(html);
        })
    }
    loadData();
})