import pandas as pd


def duplicate_emails(person: pd.DataFrame) -> pd.DataFrame:
    df = person.duplicated(subset=['email'])
    df = pd.DataFrame(person[df]['email']).drop_duplicates()
    return df



if __name__ == '__main__':

    df = pd.DataFrame({
        'id': [1, 2, 3],
        'email': ['a@b.com', 'a@b.com', 'a@b.com']
    })

    df = duplicate_emails(df)

    print(df)