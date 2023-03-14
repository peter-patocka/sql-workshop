
ALTER TABLE product_tags
ADD CONSTRAINT FK_productID
FOREIGN KEY (product_id) REFERENCES  products(id);


ALTER TABLE product_tags
    ADD CONSTRAINT FK_tagID
        FOREIGN KEY (tag_id) REFERENCES tags(id);


ALTER TABLE product_categories
    ADD CONSTRAINT FK_categoriesID
        FOREIGN KEY (product_id) REFERENCES products(id);

ALTER TABLE product_categories
    ADD CONSTRAINT FK_categoryID
        FOREIGN KEY (category_id) REFERENCES categories(id);
