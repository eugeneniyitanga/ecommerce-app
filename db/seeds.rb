Image.create!([
  {url: "https://images-na.ssl-images-amazon.com/images/I/31q1f749wnL.jpg", product_id: 11},
  {url: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/M/AC/MACBOOKPRO/MACBOOKPRO?wid=1200&hei=630&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=6xyk93", product_id: 1},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/95/aa/ac/95aaacc19547d646a84d21f26b8c63a4.jpg", product_id: 4},
  {url: "http://www.notebookcheck.net/fileadmin/Notebooks/HP/Pavilion_17-e126sg/Pavilion17_Quer.jpg", product_id: 2},
  {url: "http://www.laptopmag.com/images/wp/purch-api/incontent/2016/09/xps-13-front-620x400.jpg", product_id: 5},
  {url: "http://images.anandtech.com/doci/6066/acer-v3-571g-front-small.jpg", product_id: 16},
  {url: "http://www.computercritique.com/wp-content/uploads/2013/10/HP-Chromebook-14-Review-1024x870.jpg", product_id: 3},
  {url: "http://h10003.www1.hp.com/digmedialib/prodimg/lowres/c02154653.png", product_id: 6},
  {url: "https://images-na.ssl-images-amazon.com/images/G/01/electronics/dell/cnet_inspiron15r_gallery-07.jpg", product_id: 11},
  {url: "http://zdnet2.cbsistatic.com/hub/i/r/2015/04/23/f74cbe5b-ddf1-4766-a2d8-f609ed9e0802/thumbnail/770x433/3151c9dbf659cdb8772eb517d6ef1cde/port-z20t-thumb.jpg", product_id: 7},
  {url: "http://www.techwelike.com/wp-content/uploads/2014/03/Samsung-Chromebook-2-Series-White-11-Inch-Chromebook2-Tech-We-Like-1.jpg", product_id: 8},
  {url: "http://images.techtimes.com/data/images/full/287298/samsung-chromebook-plus.png", product_id: 9},
  {url: "http://www.samsung.com/global/galaxy/galaxy-tab-pro-s/images/galaxy-tab-pro-s_gallery_angled-right-perspective_black_combine_keyboard_s3.png", product_id: 10},
  {url: "http://cdn.ultrabookreview.com/wp-content/uploads/2013/08/sleek-samsung-ativ-book-9-plus.jpg", product_id: 12},
  {url: "http://icdn4.digitaltrends.com/image/acer-aspire-s-13-tablefull_resize-v2-1500x1000.jpg", product_id: 13},
  {url: "https://cdn.arstechnica.net/wp-content/uploads/2012/11/IMG_8412.jpg", product_id: 15},
  {url: "http://images.anandtech.com/doci/6941/Small%20(6%20of%2010).jpg", product_id: 14}
])
Product.create!([
  {name: "Mac book pro", brand: "Mac", price: "999.0", supplier_id: 3},
  {name: "Macbook Air", brand: "Mac", price: "1098.0", supplier_id: 1},
  {name: "HP Pavilion 17", brand: "HP ", price: "564.0", supplier_id: 2},
  {name: "HP Chrojmebook", brand: "HP", price: "400.0", supplier_id: 3},
  {name: "Dell XPS 13 (Kaby Lake CPU)", brand: "Dell", price: "786.0", supplier_id: 1},
  {name: "Elitebook 8440p", brand: "HP", price: "228.43", supplier_id: 2},
  {name: "Dell inspiron", brand: "DELL", price: "589.95", supplier_id: 1},
  {name: "Accer d", brand: "Acer", price: "7890.0", supplier_id: 1},
  {name: "Toshiba Portege Z20t", brand: "Toshiba", price: "1379.0", supplier_id: 3},
  {name: "Samsung Chromebook 2", brand: "Samsung", price: "399.0", supplier_id: 3},
  {name: "Samsung Chromebook Plus ", brand: "Samsung", price: "449.0", supplier_id: 3},
  {name: "Samsung TabPro", brand: "Samsung", price: "568.0", supplier_id: 3},
  {name: "Samsung ATIV Book 9 ", brand: "Samsung", price: "1374.0", supplier_id: 2},
  {name: "Acer Aspire S 13", brand: "Acer", price: "679.99", supplier_id: 2},
  {name: "Mac Book ", brand: "Mac ", price: "789789.0", supplier_id: 1},
  {name: " Toshiba Kirabook ", brand: "Toshiba", price: "1499.0", supplier_id: 1}
])
Supplier.create!([
  {name: "Vedaste", email: "vedaste@gmail.com", phone: "0782345423"},
  {name: "Mudive", email: "mudive@gmail.com", phone: "0783453434"},
  {name: "Sugira", email: "sugira@gmail.com", phone: "0789876567"}
])
User.create!([
  {name: "Vedaste", email: "vedaste.cyizere2015@kepler.org", password_digest: "$2a$10$4KcJ4c3h5JiK2WZL10RMlu8TtBSb9ZeowH4nYkp.17YoeTFR.9Qt6"},
  {name: "Eugene", email: "eugene@actualize.co", password_digest: "$2a$10$F830U5nPSU75/annpkn30e1A9ngrY2kjVE3bqrbF8zMogsWq.K.gG"},
  {name: "Eugene", email: "eugene@actualize.co", password_digest: "$2a$10$ayJSpW9CqFTnaMCZhBGAY.R0ITF1ksgAZA8VJ6wXO2u3W7G7H8b4e"},
  {name: "Eugene", email: "eugene@actualize.co", password_digest: "$2a$10$ME2Y6OxjvTo48QWyUxGYpewOMPd6aheMwp3k2cfLB4t3JpCx6xOxy"},
  {name: "vedaste", email: "vedaste.cyizere2015@kepler.org", password_digest: "$2a$10$ljPNEaWoTnKfaPGs73s9oufsPaq0vADnUKV1AibKnrLaeUGBVE8ja"},
  {name: "Gedeon", email: "gedeon@gmail.com", password_digest: "$2a$10$fxeBOw1mVitUUKZhpv.kTe9sw6qAQwpLfsE6p5vBVBeryElIvTd.S"}
])
