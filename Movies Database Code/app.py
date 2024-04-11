from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

host = "localhost"
user = "admin"
password = "password"
database = "project"

def get_db_connection():
    return mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/view_movies')
def view_movies():
    try:
        connection = get_db_connection()
        cursor = connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM movies")
        movies_data = cursor.fetchall()
        
        print(movies_data)

        return render_template('view_movies.html', movies_data=movies_data)
    except Exception as e:
        print(f"Error fetching movies: {e}")
        return 'An error occurred while fetching movies'
    finally:
        if 'connection' in locals() and connection.is_connected():
            connection.close()
            
@app.route('/view_actors')
def view_actors():
    try:
        connection = get_db_connection()
        cursor = connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM actors")
        actors_data = cursor.fetchall()
        
        print(actors_data)

        return render_template('view_actors.html', actors_data=actors_data)
    except Exception as e:
        print(f"Error fetching actors: {e}")
        return 'An error occurred while fetching actors'
    finally:
        if 'connection' in locals() and connection.is_connected():
            connection.close()
            
@app.route('/view_genres')
def view_genres():
    try:
        connection = get_db_connection()
        cursor = connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM genres")
        genres_data = cursor.fetchall()

        return render_template('view_genres.html', genres_data=genres_data)
    except Exception as e:
        app.logger.error(f"Error fetching genres: {e}")
        return 'An error occurred while fetching genres'
    finally:
        if 'connection' in locals() and connection.is_connected():
            connection.close()

@app.route('/view_studios')
def view_studios():
    try:
        connection = get_db_connection()
        cursor = connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM studios")
        studios_data = cursor.fetchall()

        return render_template('view_studios.html', studios_data=studios_data)
    except Exception as e:
        app.logger.error(f"Error fetching studios: {e}")
        return 'An error occurred while fetching studios'
    finally:
        if 'connection' in locals() and connection.is_connected():
            connection.close()

@app.route('/view_directors')
def view_directors():
    try:
        connection = get_db_connection()
        cursor = connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM directors")
        directors_data = cursor.fetchall()

        return render_template('view_directors.html', directors_data=directors_data)
    except Exception as e:
        app.logger.error(f"Error fetching directors: {e}")
        return 'An error occurred while fetching directors'
    finally:
        if 'connection' in locals() and connection.is_connected():
            connection.close()

@app.route('/create_movie', methods=['POST'])
def create_movie():
    try:
        connection = get_db_connection()
        title = request.form.get('title')
        release_year = int(request.form.get('release_year'))
        certificate = request.form.get('certificate')
        runtime = request.form.get('runtime')
        rating = float(request.form.get('rating'))
        earnings = int(request.form.get('earnings'))
        genre_id = int(request.form.get('genre_id'))
        director_id = int(request.form.get('director_id'))
        studio_id = int(request.form.get('studio_id'))

        # Call the stored procedure
        cursor = connection.cursor(dictionary=True)
        cursor.callproc('InsertMovie', (
            title, release_year, certificate, runtime, rating, earnings,
            genre_id, director_id, studio_id
        ))

        # Commit changes to the database
        connection.commit()

        return 'Movie created successfully!'
    except Exception as e:
        app.logger.error(f"Error creating movie: {e}")
        return 'An error occurred while creating the movie'
    finally:
        # Close the database connection in the finally block
        if 'connection' in locals() and connection.is_connected():
            connection.close()           
if __name__ == '__main__':
    app.run(debug=True)