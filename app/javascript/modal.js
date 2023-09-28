document.addEventListener('turbo:load', function () {
    const openModalButton = document.getElementById('openModal');
    const closeModalButton = document.getElementById('closeModal');
    const cancelDeleteButton = document.getElementById('cancelDelete');
    const modal = document.getElementById('confirmationModal');

    if (!openModalButton) return null;
    openModalButton.addEventListener('click', function (e) {
        e.preventDefault();
        modal.style.display = 'block';
    });

    closeModalButton.addEventListener('click', function () {
        modal.style.display = 'none';
    });

    cancelDeleteButton.addEventListener('click', function () {
        modal.style.display = 'none';
    });

    // モーダルの外側をクリックした際にもモーダルを閉じる
    window.addEventListener('click', function (event) {
        if (event.target === modal) {
            modal.style.display = 'none';
        }
    });
  });