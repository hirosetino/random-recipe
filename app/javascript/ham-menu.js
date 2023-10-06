document.addEventListener('turbo:load', function () {
    const openHumButton = document.getElementById('open_hum');
    const closeHumButton = document.getElementById('close_hum');
    const humMenu = document.getElementById('hum_menu');

    if (!openHumButton) return null;
    openHumButton.addEventListener('click', function () {
        humMenu.style.display = 'block';
        openHumButton.style.display = 'none'
        closeHumButton.style.display = 'block'
    });

    closeHumButton.addEventListener('click', function () {
        humMenu.style.display = 'none';
        openHumButton.style.display = 'block'
        closeHumButton.style.display = 'none'
    });
});