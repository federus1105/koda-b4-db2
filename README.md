## ERD SYSTEM E-WALLET

```mermaid
erDiagram
users {
    int id
    string name
    string email
    string addres
    string phone
}
payment_method {
    int id
    string name
}
transactions {
    int id
    string title
    int id_users
    int id_payment_method
    int id_category_payment
    timestamp created_at
    string price
    string description
}
category_payment {
    int id
    string name
}

users }|--o{ transactions : melakukan
users }|--o{ payment_method : memiliki
transactions}|--|{payment_method : dibayar
transactions }|--o{ category_payment : memiliki
```