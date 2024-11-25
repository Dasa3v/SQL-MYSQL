// Efecto de pulsación en los botones
document.querySelectorAll(".btn").forEach(btn => {
    btn.addEventListener("mouseover", () => {
        btn.style.boxShadow = "0 0 20px #0ff, 0 0 30px #00f";
    });
    btn.addEventListener("mouseout", () => {
        btn.style.boxShadow = "0 0 10px rgba(0, 255, 255, 0.5)";
    });
});
