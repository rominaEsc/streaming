from fastapi import FastAPI, HTTPException
import pandas as pd
import numpy as np


app = FastAPI()

# ------------- carga de datos -------------------

movies_df = pd.read_csv('data/data_processed/movies_df.csv',low_memory=False)
estrenos_por_dia_df = pd.read_csv('data/data_processed/estrenos_por_dia_df.csv',low_memory=False)
estrenos_por_mes_df = pd.read_csv('data/data_processed/estrenos_por_mes_df.csv',low_memory=False)

# ------------- Funciones -------------------


# -------- 1. función peliculas_dia
# Convertimos el DataFrame a un diccionario para búsqueda rápida
dia_dict = estrenos_por_dia_df.set_index('dia_de_estreno_nombre')['cant_de_estrenos'].to_dict()

@app.get('/peliculas_dia/{dia}')
def peliculas_dia(dia):
    '''Se ingresa el mes y la funcion retorna la cantidad de peliculas que 
    se estrenaron ese mes (nombre del mes, en str, ejemplo 'enero') historicamente''' 
    
    respuesta = dia_dict[dia]
    return {'mes': dia, 'cantidad': respuesta}



# -------- 2. función mes_dict

# Convertimos el DataFrame a un diccionario para búsqueda rápida
mes_dict = estrenos_por_mes_df.set_index('mes_de_estreno_nombre')['cant_de_estrenos'].to_dict()

@app.get('/peliculas_mes/{mes}')
def peliculas_mes(mes):
    '''Se ingresa el mes y la funcion retorna la cantidad de peliculas que 
    se estrenaron ese mes (nombre del mes, en str, ejemplo 'enero') historicamente''' 
    
    respuesta = mes_dict[mes]
    return {'mes': mes, 'cantidad': respuesta}

# --------------------------------
