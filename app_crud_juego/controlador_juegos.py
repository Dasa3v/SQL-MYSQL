#Realizamos la importacion de nuestra funcion de conexion 
from bd import obtener_conexion

#controlador: insertar_juego
def insertar_juego(nombre, descripcion, precio):
    conexion = obtener_conexion()
    with conexion.cursor() as cursor:
        cursor.execute("INSERT INTO juegos(nombre, descripcion, precio) VALUES (%s,%s,%s)", (nombre,descripcion, precio))
        conexion.commit()
        conexion.close()
        

#controlador: obtener_juego

def obtener_juego():
    conexion = obtener_conexion()
    juego = []
    with conexion.cursor() as cursor:
        cursor.execute("SELECT id, nombre, descripcion, precio FROM juegos")
        juego = cursor.fetchall()
    conexion.close()
    return juego


#Controlador: obtener_juego_id
def obtener_juego_por_id(id):
    conexion = obtener_conexion()
    juego = None
    with conexion.cursor() as cursor:
        cursor.execute(
            "SELECT id, nombre, descripcion, precio FROM juegos WHERE id = %s", (id,)
        )
        juego = cursor.fetchone()
    conexion.close()
    return juego

#Controlador: actualizar_juego
def actualizar_juego(nombre, descripcion, precio, id):
    conexion = obtener_conexion()
    with conexion.cursor() as cursor:
        cursor.execute("UPDATE juegos SET nombre = %s, descripcion = %s, precio = %s WHERE id = %s",
            (nombre, descripcion, precio, id))
    conexion.commit()
    conexion.close()

#Controlador: eliminar_juego
def eliminar_juego(id):
    conexion = obtener_conexion()
    with conexion.cursor() as cursor:
        cursor.execute("DELETE FROM juegos WHERE id = %s", (id,))
    conexion.commit()
    conexion.close()
