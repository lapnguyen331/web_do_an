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

const c = [
  // {id: 'NHSHQ23', link: 'https://kgin.com.vn/nuoc-hong-sam-han-quoc/'},
  // {id: 'CHSHQ23', link: 'https://kgin.com.vn/cao-sam-han-quoc/'},
  // {id: 'SSKHQ21', link: 'https://kgin.com.vn/hong-sam-cu-kho-han-quoc/'},

  // {id: 'HNSSHQ22', link: 'https://kgin.com.vn/hac-sam-han-quoc/'},
  // {id: 'NSTHQ23', link: 'https://kgin.com.vn/nhan-sam-tuoi-han-quoc/'},
  // {id: 'RSLHQ22', link: 'https://kgin.com.vn/ruou-sam-linh-chi-han-quoc/'},
  {id: 'THSHQ21', link: 'https://kgin.com.vn/tra-hong-sam-taewoong/'},
  {id: 'VHSHQ21', link: 'https://kgin.com.vn/vien-hong-sam-han-quoc/'}
]

const crawl = async function(domElement, cate) {
  const name = $(domElement).find('.product-name').text().replace("\n","").trim();
  const specific = $(domElement).find('.production-information .specifications').text().replace("\n","").trim().replace("Quy Cách : ", "");
  const price = $(domElement).find('.woocommerce-Price-amount').text().replaceAll(".","").replaceAll("đ","").trim();
  const discount = $(domElement).find('.discount-percent span').first().text().replace('-','').trim();
  const link = $(domElement).find(`a[rel='nofollow']`).attr('href');
  const id = $(domElement).find('.origin').text().replace("\n", "").replace("Mã sản phẩm : ", "").trim();
  let images = null;
  let blog = null;
  let sold = null;
  let rate = null;
  await $.ajax({
    url: link,
    success: (data) => {
      images = $(data).find('#thumb').map((_, el) => el.src).get();
      blog = $(data).find('#pills-home')[0].outerHTML;
      sold = $(data).find('.sold-number span').first().text().trim();
      rate = $(data).find('.rating-count').first().text().trim();
    },
    type: 'get'
  })
  return {
    id: id,
    name: name, 
    specific: specific, 
    price: price, 
    discount: discount, 
    images: images, 
    link: link, 
    sold: sold, 
    rate: rate, 
    category: cate
  }
}

const load_all_products = async function(data, cate) {
  const query = $(data).find('.section-category-product .product-show-wrap').get();
  const products = await Promise.all(query.map(async (e, index) => {
    return await crawl(e, cate)
  }));
  console.log(products)
  return products;
}

const load = async function(cate) {
  const final = await Promise.all(cate.map(async (c, index) => {
    let list = null;
    await $.ajax({
      url: c.link,
      success: data => list = load_all_products(data, c.id),
    })
    return list;
  }));
  console.log(final.flat())
};