import pandas as pd

df = pd.read_csv("C:\\College to Career Bridge India Placement Gap Analytics\\College to Career Bridge.csv")

print("shape:",df.shape)

#df.info()

print("\nmissing value:")

print(df.isnull().sum())

print("\nDuplicate Rows:")

print(df.duplicated().sum())

print(df["Placement Status"].value_counts())

print(df["Placement Status"].value_counts(normalize=True) * 100)


print(
pd.crosstab(
df["Internships"],
df["Placement Status"],
normalize="index" 
) * 100
)

#print(df.groupby("Placement Status")["CGPA"].mean())

print(df.groupby("Placement Status")["Coding Skills"].mean())

print(df.groupby("Placement Status")["Communication Skills"].mean())

print(
    df.groupby("Placement Status")["Backlogs"].mean()
)

print (
    pd.crosstab(
         df["Backlogs"],
        df["Placement Status"],
        normalize="index"
    ) *100
)

print(
pd.crosstab(
    df["Branch"],
    df["Placement Status"],
    normalize="index"
) * 100
)

print(
    pd.crosstab(
    df["Degree"],
    df["Placement Status"],
    normalize="index"
) * 100
)

print(
    pd.crosstab(
    df["Projects"],
    df["Placement Status"],
    normalize="index"
) * 100
)

print(
    pd.crosstab(
    df["Certifications"],
    df["Placement Status"],
    normalize="index"
) * 100
)

from sqlalchemy import create_engine

df.to_csv("College to Career Bridge pandas.csv", index=False)

engine = create_engine("mysql+mysqlconnector://root:liveptrak@127.0.0.1:3306/college to career bridge")

df.to_sql(
    name="data",
    con=engine,
    if_exists="replace",
    index=False
)

print (df.isnull().sum())

print("Data successfully loaded into MySQL!")