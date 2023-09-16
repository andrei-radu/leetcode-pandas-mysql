import pandas as pd

def order_scores(scores: pd.DataFrame) -> pd.DataFrame:
    scores['rank'] = scores['score'].rank(method='dense', ascending=False)
    return scores.drop(columns=['id']).sort_values(by=['rank'])
    


if __name__ == "__main__":

    df = pd.DataFrame({
        "id": [1, 2, 3, 4, 5, 6],
        'score': [3.5, 3.65, 4, 3.85, 4, 3.65],
    })

    df = order_scores(df)
    print(df)

