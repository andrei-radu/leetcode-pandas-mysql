import pandas as pd

def game_analysis(activity: pd.DataFrame) -> pd.DataFrame:
    return activity.sort_values('event_date').drop_duplicates('player_id').drop(['device_id', 'games_played'], axis=1).rename({'event_date': 'first_login'}, axis=1)



if __name__ == '__main__':
    df = pd.DataFrame({
        'player_id': [1, 1, 2, 3, 3],
        'device_id': [2, 2, 3, 1, 4],
        'event_date': ['2016-03-01', '2016-05-02', '2017-06-25', '2016-03-02', '2018-07-03'],
        'games_played': [5, 6, 1, 0, 5],
    })

    df = game_analysis(df)
    print(df)

