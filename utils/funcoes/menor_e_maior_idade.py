def imputar_age_min(col):
    menor = col.min(skipna=True)
    return col.fillna(menor)

def imputar_age_max(col):
    maior = col.max(skipna=True)
    return col.fillna(maior)
