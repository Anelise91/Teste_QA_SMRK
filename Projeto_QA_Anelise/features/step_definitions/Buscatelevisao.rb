Dado("que acesso a página principal") do
  visit "/"
end

Quando("busco pela {string}") do |smart|
  find("#inpHeaderSearch").set smart
  find(".icon-search").click
end

Quando("escolho o modelo na lista") do
  smart_tv = find("h1 > strong")
  expect(smart_tv.text).to eql "smart tv"

  find(".middle-search .product:nth-child(1)").click
end

Então("adiciono à sacola e valido o produto") do
  find(".button__text").click
  click_on "continuar"

  @produto = page.find(".BasketItemProduct-quantity-dropdown").value
  expect(page).to have_link(@produto, between: 1..10)
end

Quando("adiciono à sacola") do
  find(".button__text").click
end

Quando("seleciono mais um ano de garantia") do
  find("#one-year-warranty").click
  click_on "continuar"
end

Então("valido o produto") do
  expect(page).to have_link(@produto, between: 1..10)

  garantia = page.find(".BasketItem-warrantyContainer  .BasketItemProduct-quantity-dropdown").value
  expect(page).to have_link(garantia, between: 1..10)
end

Quando("posiciono sobre tv e vídeo selecionando Smart Tv") do
  find(".container-menu-header .item-of-menu.item-six.js-item:nth-child(6)").hover
  click_on "Smart Tv"
end

Quando("escolho o modelo do aparelho") do
  smarttv = find("ol > li:nth-child(4) > a")
  expect(smarttv.text).to eql "smart tv"

  find("a:nth-child(1) > div:nth-child(2) > img").click
end

Quando("seleciono todos os departamentos e depois tv e vídeo") do
  find(".item-of-menu.left-item.item-one.js-item").hover
  find(".menu-hover-tab:nth-child(3) > .item-of-menu:nth-child(9) > .link-of-menu").click
end

Quando("filtro o produto ideal em TVs e Smart TV") do
  click_on "TVs"
  click_on "Smart TV"
end
