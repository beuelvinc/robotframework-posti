*** Variables ***
${accept_policy_button_xpath}  //*[@id="onetrust-accept-btn-handler"]
${all_stamps_button_xpath}    //*[@id="send-letters-and-postcards-with-stamps"]/div[2]/div/div/a
${BROWSER}    Edge
${URL}         https://www.posti.fi/en
${notification}     //*[@id="__next"]/div[2]/div/ul/li/div
${total_fee_in_cart}    //*[@id="cart-totals-subtotal-value"]
${delivery_fee}        //*[@id="cart-totals-tax-value"]    
${go_shopping_page_button}    //ul[@class="sc-hc1f10-11 sc-hc1f10-13 lianmh fjamPI"]/li[1]/a
${go_to_cart_button}         /html/body/div[1]/header/div/div/div[2]/ul/li[2]/span/li/a
${checkout_button}        //*[@id="cart-totals-cta"]
${stamp_from_1}    1
${stamp_to_2}    2
${stamp_from_2}    2
${stamp_to_4}    4