---
title: Pandas Tutorial
date: 2022-09-19
type: book
---



_Course of Network Softwarization_

_Machine Learning for Networking_

_University of Rome "Tor Vergata"_

Lorenzo Bracciale

# Data manipulation with pandas

This is a short tutorial on main Pandas functions. Please refer to the [official website](https://pandas.pydata.org/docs/) for a more in-depth guide on Pandas.

**credits**: most of the material has been taken by the following tutorials.

[Kaggle tutorial](https://www.kaggle.com/learn/pandas)

[10 minutes to pandas](https://pandas.pydata.org/docs/user_guide/10min.html)


```python
import pandas as pd
```

## Creating dataframes

The most important data structure in Pandas is the **DataFrame** which essentially is a table.

Let us create our first dataframe


```python
pd.DataFrame({'A': [1, 2], 'B': [3, 4]})
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>3</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>4</td>
    </tr>
  </tbody>
</table>
</div>



In this example, we set the names of the _columns_ as "A" and "B". 

The names of the _rows_, in this example "0" and "1",  have been assigned by default and are called "indexes". 

We can explicitly specify the index of the dataframe in this way:


```python
pd.DataFrame({'A': [1, 2], 'B': [3, 4]}, index=['X', 'Y'])
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>X</th>
      <td>1</td>
      <td>3</td>
    </tr>
    <tr>
      <th>Y</th>
      <td>2</td>
      <td>4</td>
    </tr>
  </tbody>
</table>
</div>



There exists also another data structure called **Series**, which is essentially a list, or we can see it as a column of a table.


```python
pd.Series([1, 2])  # with automatic indexes
```




    0    1
    1    2
    dtype: int64



Like in the dataframe, we can specify the index of the Series as well. Moreover, we can also specify the name of the Series.


```python
pd.Series([1, 2], index=['A', 'B'], name='Product A')  # with manual indexes and a name
```




    A    1
    B    2
    Name: Product A, dtype: int64



Each Series has a data type (dtype). In the example above it was `int64`, but we can decide to create a Series with categoritcal data such as the next one, which will be assigned to the dtype `object`.


```python
pd.Series(["good", "good", "bad", "good"])
```




    0    good
    1    good
    2     bad
    3    good
    dtype: object



We can access to values and indexes of Series and Dataset in this way:


```python
df = pd.DataFrame({'A': [1, 2], 'B': [3, 4]})
print("Values of the dataframe")
print(df.values) # this returns a numpy array

print("\nIndex of the dataframe")
print(df.index)
```

    Values of the dataframe
    [[1 3]
     [2 4]]
    
    Index of the dataframe
    RangeIndex(start=0, stop=2, step=1)


Typically series and dataframes are big and you need to import them automatically from a file.

You can also load your dataset from many formats like CSV, json or Excel:


```python
#pd.read_csv('/your/path/file.csv')
#pd.read_excel('/your/path/file.xlsx')
#pd.read_json('/your/path/file.json')
```

## Indexing and selecting data

Let us start by creating a simple testing dataframe to play with, and assign it to the variable `df`


```python
df = pd.DataFrame({'A': [1,2,3], 'B': [4,5,6]}, index=['X', 'Y', 'Z'])
```

To view only the first lines (5 by default) we can use the `head` method. Likewise, to see the last lines of the dataframe we could use the `tail` method.


```python
df.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>X</th>
      <td>1</td>
      <td>4</td>
    </tr>
    <tr>
      <th>Y</th>
      <td>2</td>
      <td>5</td>
    </tr>
    <tr>
      <th>Z</th>
      <td>3</td>
      <td>6</td>
    </tr>
  </tbody>
</table>
</div>



When we do machine learning, it is very important to understand the dimension of the dataset which is readily provided by the `shape` attribute:


```python
df.shape
```




    (3, 2)



We can then access to a specific _column_ as


```python
df['A'] # <-- this returns a Series
```




    X    1
    Y    2
    Z    3
    Name: A, dtype: int64



or using the next method


```python
df.A
```




    X    1
    Y    2
    Z    3
    Name: A, dtype: int64



We can get the value of a specific _cell_ in this way:


```python
df['A']['X'] # <-- this returns a value
```




    1



For more advanced indexing, we can resort to the following attributes:
- `loc` : selection by _label_
- `iloc` : selection by _position_

We can select our data based on its _numerical_ position with `iloc`: 


```python
print("** First row **")
print(df.iloc[0]) 

print("\n ** First row, First column **")
print(df.iloc[0,0]) 


print("\n** Second column **")
print(df.iloc[:,1]) 
```

    ** First row **
    A    1
    B    4
    Name: X, dtype: int64
    
     ** First row, First column **
    1
    
    ** Second column **
    X    4
    Y    5
    Z    6
    Name: B, dtype: int64


Or use _label-based_ selection with `loc`:


```python
df.loc['X', 'A']
```




    1



We create expressions such as the following one. Please note that the result is a _column_ of boolean values


```python
df['A'] > 1
```




    X    False
    Y     True
    Z     True
    Name: A, dtype: bool



We can then use this column to select only a _subset_ of our dataset. 

For instance, with the next command we select only the rows where the value of the "A" column is greater than 1.


```python
df[df['A'] > 1] # only the second raw displayed
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Y</th>
      <td>2</td>
      <td>5</td>
    </tr>
    <tr>
      <th>Z</th>
      <td>3</td>
      <td>6</td>
    </tr>
  </tbody>
</table>
</div>



Another usefull selection function is `isin` to check if the values are inside a given list


```python
df['A'].isin([1,5,9])
```




    X     True
    Y    False
    Z    False
    Name: A, dtype: bool



Finally we will add a new column to an existing dataset.

To add (or replace) a column with _constant_ value you can simple make the new column equal to a _single_ value


```python
df['D'] = 0
df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
      <th>D</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>X</th>
      <td>1</td>
      <td>4</td>
      <td>0</td>
    </tr>
    <tr>
      <th>Y</th>
      <td>2</td>
      <td>5</td>
      <td>0</td>
    </tr>
    <tr>
      <th>Z</th>
      <td>3</td>
      <td>6</td>
      <td>0</td>
    </tr>
  </tbody>
</table>
</div>



Conversely, if you want to provide all the values of the new column, you can write:


```python
import numpy as np
df['C'] = np.arange(3) # equals to [0, 1, 2]
df['D'] = ['Good', 'Bad', 'Bad'] #categorical data
df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
      <th>D</th>
      <th>C</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>X</th>
      <td>1</td>
      <td>4</td>
      <td>Good</td>
      <td>0</td>
    </tr>
    <tr>
      <th>Y</th>
      <td>2</td>
      <td>5</td>
      <td>Bad</td>
      <td>1</td>
    </tr>
    <tr>
      <th>Z</th>
      <td>3</td>
      <td>6</td>
      <td>Bad</td>
      <td>2</td>
    </tr>
  </tbody>
</table>
</div>



# Usefull methods

Pandas is full of usefull methods to understand what is going on with your data.

For instance, to show some statistics about the current dataset we can use `describe`


```python
df.describe() 
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
      <th>C</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>count</th>
      <td>3.0</td>
      <td>3.0</td>
      <td>3.0</td>
    </tr>
    <tr>
      <th>mean</th>
      <td>2.0</td>
      <td>5.0</td>
      <td>1.0</td>
    </tr>
    <tr>
      <th>std</th>
      <td>1.0</td>
      <td>1.0</td>
      <td>1.0</td>
    </tr>
    <tr>
      <th>min</th>
      <td>1.0</td>
      <td>4.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>25%</th>
      <td>1.5</td>
      <td>4.5</td>
      <td>0.5</td>
    </tr>
    <tr>
      <th>50%</th>
      <td>2.0</td>
      <td>5.0</td>
      <td>1.0</td>
    </tr>
    <tr>
      <th>75%</th>
      <td>2.5</td>
      <td>5.5</td>
      <td>1.5</td>
    </tr>
    <tr>
      <th>max</th>
      <td>3.0</td>
      <td>6.0</td>
      <td>2.0</td>
    </tr>
  </tbody>
</table>
</div>



We can call different statistical methods on any given column such as _mean_, _std_, _min_ or _max_. For instance:


```python
df['A'].mean()
```




    2.0



_Unique_ returns the value set of a columns. For instance, the set of unique values of column "D" are "Good" or "Bad":


```python
df['D'].unique()
```




    array(['Good', 'Bad'], dtype=object)



`value_counts` is also very used since it give us the occurences of all the values:


```python
df['D'].value_counts() #Two bad elements, good just one element
```




    Bad     2
    Good    1
    Name: D, dtype: int64



## Modify values

It is common to apply a certain function to all the values of a column. 

This is easily done with the `apply` method. For instance we could want to make a square out of a column, like this:


```python
df['C'].map(lambda p: p * p)
```




    X    0
    Y    1
    Z    4
    Name: C, dtype: int64



Please note that most of these functions _do not modify_ the original dataset! 


```python
df['C'] # it is not changed!
```




    X    0
    Y    1
    Z    2
    Name: C, dtype: int64



To actually change the column we can assign the modified dataframe such as:
`df['C'] = df['C'].map(lambda p: p * p) `


We can also call `apply` on each _row_. We are going to experiment with only the numerical part of our dataset (first three columns) since it would raise an exception if we launch it on a categorical column such as column "D". 


```python
df[['A', 'B', 'C']].apply(lambda p: p * p, axis='columns')
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
      <th>C</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>X</th>
      <td>1</td>
      <td>16</td>
      <td>0</td>
    </tr>
    <tr>
      <th>Y</th>
      <td>4</td>
      <td>25</td>
      <td>1</td>
    </tr>
    <tr>
      <th>Z</th>
      <td>9</td>
      <td>36</td>
      <td>4</td>
    </tr>
  </tbody>
</table>
</div>



## Grouping

We can group our rows and then performing some calculation (e.g., _count_ or _min_) on the fields:


```python
df.groupby('D').count()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
      <th>C</th>
    </tr>
    <tr>
      <th>D</th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Bad</th>
      <td>2</td>
      <td>2</td>
      <td>2</td>
    </tr>
    <tr>
      <th>Good</th>
      <td>1</td>
      <td>1</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>



## Data types

All the columns of our dataframe is a Series, and each Series has a data type (*dtype*)


```python
df['A'].dtype
```




    dtype('int64')




```python
df.dtypes # to watch all the dtypes
```




    A     int64
    B     int64
    D    object
    C     int64
    dtype: object



We can change the datatype with astype. For instance:


```python
df['A'].astype('float64')
```




    X    1.0
    Y    2.0
    Z    3.0
    Name: A, dtype: float64



When we import a csv in pandas, it automatically try to guess the right datatype. Most of the time it does a very good job, however sometimes it can be usefull to force the `dtype` on some column. Please refer to the [official docs](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.html) of pandas to know more.

## Not a Number

It is common to _do not_ have all the data. 


In such cases, pandas fills the missing values with `Not a Number` value, aka `NaN`.

We are going to simulate this case:


```python
df["E"] = np.nan, np.nan, 1  #simulate a columns with two missing values
df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
      <th>D</th>
      <th>C</th>
      <th>E</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>X</th>
      <td>1</td>
      <td>4</td>
      <td>Good</td>
      <td>0</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>Y</th>
      <td>2</td>
      <td>5</td>
      <td>Bad</td>
      <td>1</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>Z</th>
      <td>3</td>
      <td>6</td>
      <td>Bad</td>
      <td>2</td>
      <td>1.0</td>
    </tr>
  </tbody>
</table>
</div>



`isnull` and `notnull` are two usefull selectors for such null values


```python
print(pd.isnull(df['E'])) 
print("*********")
print(pd.notnull(df['E']))
```

    X     True
    Y     True
    Z    False
    Name: E, dtype: bool
    *********
    X    False
    Y    False
    Z     True
    Name: E, dtype: bool


How to do machine learning with `NaN`?

It is not uncommon we need to substitute a constant value in place of all the `NaN`. 
This is readily done by the `fillna` method.


```python
df.fillna(42)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
      <th>D</th>
      <th>C</th>
      <th>E</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>X</th>
      <td>1</td>
      <td>4</td>
      <td>Good</td>
      <td>0</td>
      <td>42.0</td>
    </tr>
    <tr>
      <th>Y</th>
      <td>2</td>
      <td>5</td>
      <td>Bad</td>
      <td>1</td>
      <td>42.0</td>
    </tr>
    <tr>
      <th>Z</th>
      <td>3</td>
      <td>6</td>
      <td>Bad</td>
      <td>2</td>
      <td>1.0</td>
    </tr>
  </tbody>
</table>
</div>



Or we can decide to drop the lines with `NaN``


```python
df.dropna()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>A</th>
      <th>B</th>
      <th>D</th>
      <th>C</th>
      <th>E</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Z</th>
      <td>3</td>
      <td>6</td>
      <td>Bad</td>
      <td>2</td>
      <td>1.0</td>
    </tr>
  </tbody>
</table>
</div>



## Concat, join, merge, split

*Concat* concatenates pandas objects along a particular axis  (rows or columns)

![cat](https://pandas.pydata.org/docs/_images/merging_concat_basic.png)
(credtis https://pandas.pydata.org/)


```python
df1 = pd.DataFrame({'A': ['AO', 'A1'], 'B': ['B0', 'B1'], 'C': ['C0', 'C1']})
df2 = pd.DataFrame({'A': ['A2', 'A3'], 'B': ['B2', 'B3'], 'C': ['C2', 'C3']})

print("DataFrame1")
print(df1)

print("\nDataFrame2")
print(df2)

print("\nConcat of DF1 and DF2")
print(pd.concat([df1, df2]))
```

    DataFrame1
        A   B   C
    0  AO  B0  C0
    1  A1  B1  C1
    
    DataFrame2
        A   B   C
    0  A2  B2  C2
    1  A3  B3  C3
    
    Concat of DF1 and DF2
        A   B   C
    0  AO  B0  C0
    1  A1  B1  C1
    0  A2  B2  C2
    1  A3  B3  C3


`concat` can be done on rows (by default, as in the example above), or on columns.

As happens for many Pandas commands, we can specify that with the `axis` parameter, where:

- `axis=0`: means "do that for rows"
- `axis=1`: means "do that for columns"


```python
print(pd.concat([df1, df2], axis=1)) #concat the columns
```

        A   B   C   A   B   C
    0  AO  B0  C0  A2  B2  C2
    1  A1  B1  C1  A3  B3  C3


`merge` is more complicated since there are many forms of join:


- *inner join*: It returns a dataframe with only those rows that are on both dataframes. This is similar to the intersection of two sets.
- *outer join*:  returns all those records which either have a match in the left or right dataframe.
- *left join*: returns a dataframe containing all the rows of the left dataframe. All the non-matching rows of the left dataframe contain NaN for the columns in the right dataframe.
- *right join*: same as left join but clearly on right dataframe!


Using merge with default arguments results in an inner join.

![./merge_types.png](https://lorenzobracciale.github.io/merge_types.png)


```python

df1 = pd.DataFrame({'a': ['foo', 'bar'], 'b': [1, 2]})
df2 = pd.DataFrame({'a': ['foo', 'baz'], 'c': [3, 4]})

print("DataFrame1")
print(df1)

print("\nDataFrame2")
print(df2)
```

    DataFrame1
         a  b
    0  foo  1
    1  bar  2
    
    DataFrame2
         a  c
    0  foo  3
    1  baz  4


**Left merge**


We are merging on the column "a". 

Given that we are left merging, we will have all the rows of `df1`


```python
df1.merge(df2, how='left', on='a')
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>a</th>
      <th>b</th>
      <th>c</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>foo</td>
      <td>1</td>
      <td>3.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>bar</td>
      <td>2</td>
      <td>NaN</td>
    </tr>
  </tbody>
</table>
</div>



**Right merge**

We are merging on the column "a". 

Given that we are left merging, we will have all the rows of `df2`


```python
df1.merge(df2, how='right', on='a')
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>a</th>
      <th>b</th>
      <th>c</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>foo</td>
      <td>1.0</td>
      <td>3</td>
    </tr>
    <tr>
      <th>1</th>
      <td>baz</td>
      <td>NaN</td>
      <td>4</td>
    </tr>
  </tbody>
</table>
</div>



**Inner merge**

The inner merge take only the rows which are _equal_ on the merge column (intersection).


```python
df1.merge(df2, how='inner', on='a')
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>a</th>
      <th>b</th>
      <th>c</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>foo</td>
      <td>1</td>
      <td>3</td>
    </tr>
  </tbody>
</table>
</div>



**Outer merge**

The outer merge instead is the union. It includes all the rows of _both_ the dataframes


```python
df1.merge(df2, how='outer', on='a')
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>a</th>
      <th>b</th>
      <th>c</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>foo</td>
      <td>1.0</td>
      <td>3.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>bar</td>
      <td>2.0</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>baz</td>
      <td>NaN</td>
      <td>4.0</td>
    </tr>
  </tbody>
</table>
</div>



If we want to merge dataframes that both have columns named in the same way, pandas will add a suffix on the merged dataframe. For instance, consider:


```python
df1 = pd.DataFrame({'lkey': ['foo', 'bar', 'baz', 'foo'],
                    'value': [1, 2, 3, 5]})
df2 = pd.DataFrame({'rkey': ['foo', 'bar', 'baz', 'foo'],
                    'value': [5, 6, 7, 8]})
print("DF1")
print(df1.head())

print("\nDF2")
print(df2.head())
```

    DF1
      lkey  value
    0  foo      1
    1  bar      2
    2  baz      3
    3  foo      5
    
    DF2
      rkey  value
    0  foo      5
    1  bar      6
    2  baz      7
    3  foo      8


If we are merging `df1` and `df2` pandas will automatically add "_x" and "_y" suffix.


Otherwise, we can specify the suffix with the `suffixes=('_left', '_right')`.


```python
#value_x column is the value column of df1. 
#value_y column is the value column of df2 

df1.merge(df2, left_on='lkey', right_on='rkey') 
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>lkey</th>
      <th>value_x</th>
      <th>rkey</th>
      <th>value_y</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>foo</td>
      <td>1</td>
      <td>foo</td>
      <td>5</td>
    </tr>
    <tr>
      <th>1</th>
      <td>foo</td>
      <td>1</td>
      <td>foo</td>
      <td>8</td>
    </tr>
    <tr>
      <th>2</th>
      <td>foo</td>
      <td>5</td>
      <td>foo</td>
      <td>5</td>
    </tr>
    <tr>
      <th>3</th>
      <td>foo</td>
      <td>5</td>
      <td>foo</td>
      <td>8</td>
    </tr>
    <tr>
      <th>4</th>
      <td>bar</td>
      <td>2</td>
      <td>bar</td>
      <td>6</td>
    </tr>
    <tr>
      <th>5</th>
      <td>baz</td>
      <td>3</td>
      <td>baz</td>
      <td>7</td>
    </tr>
  </tbody>
</table>
</div>


