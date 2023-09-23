import pandas as pd


def not_boring_movies(cinema: pd.DataFrame) -> pd.DataFrame:
    df = cinema[cinema['id']%2 != 0]
    df = df[df['description'] != 'boring']
    df = df.sort_values(by='rating', ascending=False)
    return df
    



if __name__ == '__main__':

    df = pd.DataFrame({
        'id': [1, 2, 3, 4, 5],
        'movie': ['war', 'science', 'irish', 'ice song', 'house card'],
        'description': ['great 3d', 'fiction', 'boring', 'Fantacy', 'Interesting'],
        'rating': [8.9, 8.5, 6.2, 8.6, 9.1]
    })

    df = not_boring_movies(df)

    print(df)