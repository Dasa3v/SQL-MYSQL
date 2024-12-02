// Efecto de pulsación en los botones
document.querySelectorAll(".btn").forEach(btn => {
    btn.addEventListener("mouseover", () => {
        btn.style.boxShadow = "0 0 20px #0ff, 0 0 30px #00f";
    });
    btn.addEventListener("mouseout", () => {
        btn.style.boxShadow = "0 0 10px rgba(0, 255, 255, 0.5)";
    });
});


document.addEventListener('DOMContentLoaded', () => {
    applyTheme(); // Aplica el tema guardado al cargar la página

    const toggleSwitch = document.getElementById('theme-toggle');
    toggleSwitch.addEventListener('click', () => {
        const currentMode = localStorage.getItem('mode') || 'dark';
        const newMode = currentMode === 'dark' ? 'light' : 'dark';

        // Guardar el nuevo modo en localStorage
        localStorage.setItem('mode', newMode);

        // Aplicar el nuevo tema
        applyTheme();

        // Cambiar el icono dinámicamente
        const icon = toggleSwitch.querySelector('i');
        if (newMode === 'light') {
            icon.classList.remove('bi-moon');
            icon.classList.add('bi-sun');
        } else {
            icon.classList.remove('bi-sun');
            icon.classList.add('bi-moon');
        }
    });
});

// Función para aplicar el tema según el modo guardado
function applyTheme() {
    const currentMode = localStorage.getItem('mode') || 'dark';
    if (currentMode === 'light') {
        document.body.classList.add('light-mode');
    } else {
        document.body.classList.remove('light-mode');
    }
}
