alter table sales_orders add constraint fk_sales_orders__user
    foreign key (user_id)
    references users (id) ;

alter table sales_orders add constraint fk_sales_order__sales
    foreign key (session_id)
    references sessions (id) ;

alter table sales_orders add constraint fk_sales_order__coupons
    foreign key (coupon_id)
    references coupons (id) ;

alter table cc_transactions add constraint fk_cc_transactions__sales_order
    foreign key (order_id)
    references sales_orders (id) ;

alter table order_products add constraint fk_order_products__sales_order
    foreign key (order_id)
    references sales_orders (id) ;

alter table order_products add constraint fk_order_products__product_id
    foreign key (product_id)
    references products (id) ;

alter table products add constraint fk_products__product_status_id
    foreign key (product_status_id)
    references product_statuses (id) ;

