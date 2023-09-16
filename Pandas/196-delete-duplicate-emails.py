import pandas as pd

# Modify Person in place
def delete_duplicate_emails(person: pd.DataFrame) -> None:
    person.sort_values(by='id', inplace=True)
    person.drop_duplicates(subset=['email'], keep='first', inplace=True)


if __name__ == '__main__':
    df = pd.DataFrame({
        'id': [1, 2, 3],
        'email': ['john@example.com', 'bob@example.com', 'john@example.com'],
    })

    delete_duplicate_emails(df)
    print(df)