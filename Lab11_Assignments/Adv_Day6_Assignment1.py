class Library:
    total_books = 0  
    all_books = []  

    def __init__(self, name):
        self.name = name  
        self.borrowed_books = []  

    def borrow_book(self, book):
        if book in Library.all_books:
            self.borrowed_books.append(book)
            Library.all_books.remove(book)
            Library.total_books -= 1
            print(f"{self.name} has borrowed '{book}'.")
        else:
            print("Book not available.")

    def return_book(self, book):
        if book in self.borrowed_books:
            self.borrowed_books.remove(book)
            Library.all_books.append(book)
            Library.total_books += 1
            print(f"{self.name} has returned '{book}'.")
        else:
            print(f"{self.name} did not borrow '{book}'.")

    @classmethod
    def view_library_books(cls):
        print(f"Total books in the library: {cls.total_books}")
        print("Books currently available in the library:")
        for book in cls.all_books:
            print(f"- {book}")

Library.all_books = ['The Great Gatsby', '1984', 'To Kill a Mockingbird', 'Moby Dick']
Library.total_books = len(Library.all_books)

member1 = Library("Ajit")
member2 = Library("Ishwari")

member1.borrow_book('1984')
member2.borrow_book('1984')
member1.return_book('1984')

Library.view_library_books()

'''
OUTPUT:
Ajit has borrowed '1984'.
Book not available.
Ajit has returned '1984'.
Total books in the library: 4
Books currently available in the library:
- The Great Gatsby
- To Kill a Mockingbird
- Moby Dick
- 1984
'''
