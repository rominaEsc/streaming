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

@app.get('/peliculas_dia/{dia_de_la_semana}')
def peliculas_dia(dia_de_la_semana):
    '''Se ingresa el mes y la funcion retorna la cantidad de peliculas que 
    se estrenaron ese mes (nombre del mes, en str, ejemplo 'enero') historicamente''' 
    
    assert dia_de_la_semana in ['lunes','martes','miercoles','jueves', 'viernes', 'sabado', 'domingo'], f'Debe ingresar el nombre del día en español(sin tilde). Ej: "miercoles"'
    
    respuesta = dia_dict[dia_de_la_semana]
    
    return {'dia_de_la_semana': dia_de_la_semana, 'cantidad': respuesta}



# -------- 2. función peliculas_mes

# Convertimos el DataFrame a un diccionario para búsqueda rápida
mes_dict = estrenos_por_mes_df.set_index('mes_de_estreno_nombre')['cant_de_estrenos'].to_dict()

@app.get('/peliculas_mes/{mes}')
def peliculas_mes(mes):
    '''Se ingresa el mes y la funcion retorna la cantidad de peliculas que 
    se estrenaron ese mes (nombre del mes, en str, ejemplo 'enero') historicamente''' 

    assert mes in ['enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiembre','octubre','noviembre','diciembre'], f'Debe ingresar el nombre del mes en español. Ej: "Septiembre"'

    respuesta = mes_dict[mes]

    return {'mes': mes, 'cantidad': respuesta}

# --------------------------------
