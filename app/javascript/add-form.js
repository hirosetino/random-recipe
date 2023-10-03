document.addEventListener('turbo:load', function() {
    // 材料を追加するボタン
    const addFoodButton = document.getElementById('add-food-btn');
    if (addFoodButton) {
        addFoodButton.addEventListener('click', function(e) {
            e.preventDefault();
            const foodsContainer = document.getElementById('foods-container');
            const foodTemplate = document.getElementById('foods_fields_template');
            const food_new_id = new Date().getTime();
            const food_regexp = new RegExp('new_foods', 'g');
            const foodContent = foodTemplate.innerHTML.replace(food_regexp, food_new_id);
            const newFoodFields = document.createRange().createContextualFragment(foodContent);
            foodsContainer.appendChild(newFoodFields);
        });
    }

    // 作り方を追加するボタン
    const addProcedureButton = document.getElementById('add-procedure-btn');
    if (addProcedureButton) {
        addProcedureButton.addEventListener('click', function(e) {
            e.preventDefault();
            const proceduresContainer = document.getElementById('procedures-container');
            const procedureTemplate = document.getElementById('procedures_fields_template');
            const procedure_new_id = new Date().getTime();
            const procedure_regexp = new RegExp('new_procedures', 'g');
            const procedureContent = procedureTemplate.innerHTML.replace(procedure_regexp, procedure_new_id);
            const newProcedureFields = document.createRange().createContextualFragment(procedureContent);
            proceduresContainer.appendChild(newProcedureFields);
        });
    }
});