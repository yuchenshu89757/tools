bookshops="
    bookshop1
    bookshop2
    bookshop3
"
bookshop1="
    Nginx
    Php
    JavaScipt
"
bookshop2="
    Cpp
    Java
"
bookshop3="
    HTML
    CSS
    Python
    Ruby
"

for bookshop in ${bookshops}; do
    book_list=""
    for book in ${!bookshop}; do
        book_list=${book_list}" "$book
    done
    echo ${book_list}
done
