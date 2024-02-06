-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Category" (
    "category_ids" VARCHAR(35)   NOT NULL,
    "categories" VARCHAR(35)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_ids"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_ids" VARCHAR(35)   NOT NULL,
    "subcategories" VARCHAR(35)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_ids"
     )
);

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(35)   NOT NULL,
    "description" VARCHAR(53)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledge" FLOAT   NOT NULL,
    "outcome" VARCHAR(35)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(35)   NOT NULL,
    "currency" VARCHAR(35)   NOT NULL,
    "lauched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_ids" VARCHAR(35)   NOT NULL,
    "subcategory_ids" VARCHAR(35)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Contact" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(35)   NOT NULL,
    "last_name" VARCHAR(35)   NOT NULL,
    "email" VARCHAR(45)   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_ids" FOREIGN KEY("category_ids")
REFERENCES "Category" ("category_ids");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_ids" FOREIGN KEY("subcategory_ids")
REFERENCES "Subcategory" ("subcategory_ids");

ALTER TABLE "Contact" ADD CONSTRAINT "fk_Contact_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

