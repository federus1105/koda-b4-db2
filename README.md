## ERD SYSTEM E-WALLET

```mermaid
erDiagram
user {
    string name
    string email
    string addres
    string phone
}
metode_pembayaran {
    string name
}
transaksi {
    string name
    timestamp date
    string price
    string description
}
histori {
    string name
    timestamp date
}
category {
    string name
}

user }|--o{ transaksi : melakukan
user }|--|{ metode_pembayaran : memilih
user }|--o{histori: melihat
category }|--|{ transaksi : memiliki
transaksi }|--|{ histori : memiliki
```