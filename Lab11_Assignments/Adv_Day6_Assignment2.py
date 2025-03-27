class MovieLibrary:
    available_movies = [] 

    def __init__(self, member_name):
        self.member_name = member_name  
        self.borrowed_movies = []  

    def borrow_movie(self, movie):
        if movie in MovieLibrary.available_movies:
            self.borrowed_movies.append(movie)  
            MovieLibrary.available_movies.remove(movie)  
            print(f"{self.member_name} has borrowed '{movie}'.")
        else:
            print(f"'{movie}' is not available in the library.")

    def return_movie(self, movie):
        if movie in self.borrowed_movies:
            self.borrowed_movies.remove(movie)  
            MovieLibrary.available_movies.append(movie)  
            print(f"{self.member_name} has returned '{movie}'.")
        else:
            print(f"{self.member_name} did not borrow '{movie}'.")

    def view_borrowed_movies(self):
        if self.borrowed_movies:
            print(f"{self.member_name} has borrowed the following movies:")
            for movie in self.borrowed_movies:
                print(f"- {movie}")
        else:
            print(f"{self.member_name} has not borrowed any movies.")

MovieLibrary.available_movies = ['Inception', 'The Matrix', 'Titanic', 'Avatar', 'Interstellar']

member1 = MovieLibrary("AJit")
member2 = MovieLibrary("Ishwari")

member1.borrow_movie('Inception')
member2.borrow_movie('Inception')
member1.return_movie('Inception')

member1.view_borrowed_movies()
member2.view_borrowed_movies()

print("\nAvailable movies in the library:")
for movie in MovieLibrary.available_movies:
    print(f"- {movie}")


'''
OUTPUT:
Ajit has borrowed 'Inception'.
'Inception' is not available in the library.
Ajit has returned 'Inception'.
Ajit has not borrowed any movies.
Ishwari has not borrowed any movies.

Available movies in the library:
- The Matrix
- Titanic
- Avatar
- Interstellar
- Inception
'''
