InvoiceItem.destroy_all
Transaction.destroy_all
Invoice.destroy_all
BulkDiscount.destroy_all
Customer.destroy_all
Merchant.destroy_all
Item.destroy_all

# system('rake import')

# @bulk_discount_1 = BulkDiscount.create!(percentage_discount: 10, quantity_threshold: 5, merchant_id: 1)
# @bulk_discount_2 = BulkDiscount.create!(percentage_discount: 15, quantity_threshold: 10, merchant_id: 1)
# @bulk_discount_3 = BulkDiscount.create!(percentage_discount: 20, quantity_threshold: 15, merchant_id: 1)
# @bulk_discount_4 = BulkDiscount.create!(percentage_discount: 25, quantity_threshold: 20, merchant_id: 1)
# @bulk_discount_1 = BulkDiscount.create!(percentage_discount: 10, quantity_threshold: 5, merchant_id: 2)
# @bulk_discount_2 = BulkDiscount.create!(percentage_discount: 15, quantity_threshold: 10, merchant_id: 2)
# @bulk_discount_3 = BulkDiscount.create!(percentage_discount: 20, quantity_threshold: 15, merchant_id: 2)
# @bulk_discount_4 = BulkDiscount.create!(percentage_discount: 25, quantity_threshold: 20, merchant_id: 2)

## TESTING DATA

@merchant = Merchant.create!(name: 'Discount Rev')
@merchant_2 = Merchant.create!(name: 'Disco Discount Emporium')

@bulk_discount_1 = BulkDiscount.create!(merchant_id: @merchant.id, percentage_discount: 10, quantity_threshold: 20)
@bulk_discount_2 = BulkDiscount.create!(merchant_id: @merchant.id, percentage_discount: 20, quantity_threshold: 25)
@bulk_discount_3 = BulkDiscount.create!(merchant_id: @merchant_2.id, percentage_discount: 25, quantity_threshold: 10)
@bulk_discount_4 = BulkDiscount.create!(merchant_id: @merchant_2.id, percentage_discount: 30, quantity_threshold: 15)
    
@customer = Customer.create!(first_name: "John", last_name: "Doe")

@invoice = Invoice.create!(customer_id: @customer.id, status: 2)

@invoice_2 = Invoice.create!(customer_id: @customer.id, status: 2)

@item_1 = Item.create!(name: "Item 1", description: "Item 1 desc", status: 1, merchant_id: @merchant.id, unit_price: 100)
@item_2 = Item.create!(name: "Item 2", description: "Item 2 desc", status: 1, merchant_id: @merchant.id, unit_price: 200)
@item_3 = Item.create!(name: "Item 3", description: "Item 3 desc", status: 1, merchant_id: @merchant.id, unit_price: 300)
@item_4 = Item.create!(name: "Item 4", description: "Item 4 desc", status: 1, merchant_id: @merchant.id, unit_price: 400)
@item_5 = Item.create!(name: "Item 5", description: "Item 5 desc", status: 1, merchant_id: @merchant.id, unit_price: 500)
@item_6 = Item.create!(name: "Item 6", description: "Item 6 desc", status: 1, merchant_id: @merchant.id, unit_price: 600)
@item_7 = Item.create!(name: "Item 7", description: "Item 7 desc", status: 1, merchant_id: @merchant.id, unit_price: 700)
@item_8 = Item.create!(name: "Item 8", description: "Item 8 desc", status: 1, merchant_id: @merchant.id, unit_price: 800)
@item_9 = Item.create!(name: "Item 9", description: "Item 9 desc", status: 1, merchant_id: @merchant.id, unit_price: 900)
@item_10 = Item.create!(name: "Item 10", description: "Item 10 desc", status: 1, merchant_id: @merchant.id, unit_price: 1000)

@item_11 = Item.create!(name: "Item 11", description: "Item 11 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 100)
@item_12 = Item.create!(name: "Item 12", description: "Item 12 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 200)
@item_13 = Item.create!(name: "Item 13", description: "Item 13 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 300)
@item_14 = Item.create!(name: "Item 14", description: "Item 14 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 400)
@item_15 = Item.create!(name: "Item 15", description: "Item 15 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 500)
@item_16 = Item.create!(name: "Item 16", description: "Item 16 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 600)
@item_17 = Item.create!(name: "Item 17", description: "Item 17 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 700)
@item_18 = Item.create!(name: "Item 18", description: "Item 18 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 800)
@item_19 = Item.create!(name: "Item 19", description: "Item 19 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 900)
@item_20 = Item.create!(name: "Item 20", description: "Item 20 desc", status: 1, merchant_id: @merchant_2.id, unit_price: 1000)

@ii_1 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_1.id, quantity: 5, unit_price: 100, status: 1)
@ii_2 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_2.id, quantity: 5, unit_price: 200, status: 1)
@ii_3 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_3.id, quantity: 10, unit_price: 300, status: 1)
@ii_4 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_4.id, quantity: 10, unit_price: 400, status: 1)
@ii_5 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_5.id, quantity: 15, unit_price: 500, status: 1)
@ii_6 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_6.id, quantity: 15, unit_price: 600, status: 1)
@ii_7 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_7.id, quantity: 20, unit_price: 700, status: 1)
@ii_8 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_8.id, quantity: 20, unit_price: 800, status: 1)
@ii_9 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_9.id, quantity: 25, unit_price: 900, status: 1)
@ii_10 = InvoiceItem.create!(invoice_id: @invoice.id, item_id: @item_10.id, quantity: 25, unit_price: 1000, status: 1)

@ii_11 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_11.id, quantity: 5, unit_price: 100, status: 1)
@ii_12 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_12.id, quantity: 5, unit_price: 200, status: 1)
@ii_13 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_13.id, quantity: 10, unit_price: 300, status: 1)
@ii_14 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_14.id, quantity: 10, unit_price: 400, status: 1)
@ii_15 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_15.id, quantity: 15, unit_price: 500, status: 1)
@ii_16 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_16.id, quantity: 15, unit_price: 600, status: 1)
@ii_17 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_17.id, quantity: 20, unit_price: 700, status: 1)
@ii_18 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_18.id, quantity: 20, unit_price: 800, status: 1)
@ii_19 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_19.id, quantity: 25, unit_price: 900, status: 1)
@ii_20 = InvoiceItem.create!(invoice_id: @invoice_2.id, item_id: @item_20.id, quantity: 25, unit_price: 1000, status: 1)