# UserMaster App - Taller 2 🚀

Este repositorio contiene el despliegue web de la aplicación móvil **UserMaster**, desarrollada en Flutter. 

El objetivo principal de este proyecto es implementar la interfaz gráfica (UI) y la navegación básica aplicando los principios de **Clean Architecture** en la capa de presentación.

## 📱 Pantallas y Funcionalidades

La aplicación cuenta con el siguiente flujo simulado mediante estados locales:

*   **Splash Screen:** Pantalla de carga inicial (3 segundos).
*   **Login:** Inicio de sesión con simulación de carga y redirección.
*   **Registro:** Formulario con validación de contraseñas idénticas.
*   **Recuperar Contraseña:** Simulación de envío de correo con notificación tipo SnackBar.
*   **Dashboard:** Menú de navegación inferior (BottomNavigationBar) con lista de notificaciones recientes simuladas.
*   **Perfil:** Vista de usuario con funcionalidad para cerrar sesión y limpiar el historial de rutas.

## 🛠️ Tecnologías y Arquitectura

*   **Framework:** Flutter (Compilado para Web)
*   **Arquitectura:** Clean Architecture (Capa de Presentación)
*   **Estructura:** Uso intensivo de Widgets reutilizables (CustomTextField, CustomButton) para evitar duplicidad de código.
*   **Rutas:** Manejo centralizado de navegación.