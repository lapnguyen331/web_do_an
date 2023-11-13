const triggerTabList = document.querySelectorAll('#myTab button')
triggerTabList.forEach(triggerEl => {
  const tabTrigger = new bootstrap.Tab(triggerEl)

  triggerEl.addEventListener('click', event => {
    event.preventDefault()
    tabTrigger.show()
  })
})

const triggerEl = document.querySelector('#myTab button[data-bs-target="#profile"]')
bootstrap.Tab.getInstance(triggerEl).show() // Select tab by name

const triggerFirstTabEl = document.querySelector('#myTab li:first-child button')
bootstrap.Tab.getInstance(triggerFirstTabEl).show(); // Select first tab

const b = {data: [...document.querySelectorAll('.section-category-product .product-show-wrap')].map(function(div) {
  const name = $(div).find('.product-name').text().replace("\n"," ").trim();
  const img = $(div).find('img')[0].src;
  const specific = $(div).find('.production-information .specifications').text().replace("\n"," ").trim().replace("Quy Cách : ", "");
  const price = $(div).find('.woocommerce-Price-amount').text().replaceAll(".","").replaceAll("đ","").trim();
  const discount = $(div).find('.discount-percent span').first().text().replace('-','').trim();
  return {name: name, img: img, specific: specific, price: price, discount: discount, category: 'RSLHQ22'}
})}