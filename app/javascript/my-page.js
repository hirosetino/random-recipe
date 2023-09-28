document.addEventListener('turbo:load', function () {
    const myRecipeButton = document.getElementById('my-recipe-text');
    const myFavoriteButton = document.getElementById('my-favorite-text');
    const myRecipeLists = document.getElementById('my-recipe-lists');
    const myFavoriteLists = document.getElementById('my-favorite-lists');

    if (!myRecipeButton) return null;
    myRecipeButton.addEventListener('click', function (e) {
        e.preventDefault();
        myRecipeButton.style.color = 'black';
        myRecipeButton.style.borderBottom = '2px solid black';
        myRecipeLists.style.display = 'block';
        myFavoriteButton.style.color = '#9F9F9F';
        myFavoriteButton.style.borderBottom = 'none';
        myFavoriteLists.style.display = 'none';
    });

    myFavoriteButton.addEventListener('click', function (e) {
        e.preventDefault();
        myFavoriteButton.style.color = 'black';
        myFavoriteButton.style.borderBottom = '2px solid black';
        myFavoriteLists.style.display = 'block';
        myRecipeButton.style.color = '#9F9F9F';
        myRecipeButton.style.borderBottom = 'none';
        myRecipeLists.style.display = 'none';
    });
});