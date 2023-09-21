document.addEventListener('turbo:load', function() {
    const addFoodButton = document.getElementById('add-food-btn');
    console.log(4);
    if (addFoodButton) {
        addFoodButton.addEventListener('click', function(e) {
            e.preventDefault();
            console.log(5);
            const foodsContainer = document.getElementById('foods-container');
            const foodTemplate = document.getElementById('foods_fields_template');
            const food_new_id = new Date().getTime();
            const food_regexp = new RegExp('new_foods', 'g');
            const foodContent = foodTemplate.innerHTML.replace(food_regexp, food_new_id);
            const newFoodFields = document.createRange().createContextualFragment(foodContent);
            foodsContainer.appendChild(newFoodFields);


            /*削除機能（未完成）
            const deleteFoodButtons = newFoodFields.querySelectorAll('.delete-food-btn');
            deleteFoodButtons.forEach(function(deleteFoodButton) {
                console.log(6);
                deleteFoodButton.addEventListener('click', function() {
                    this.closest('.food-field').remove();
                });
            });*/
        });
    }

    const addProcedureButton = document.getElementById('add-procedure-btn');
    console.log(1);
    if (addProcedureButton) {
        addProcedureButton.addEventListener('click', function(e) {
            e.preventDefault();
            console.log(2);
            const proceduresContainer = document.getElementById('procedures-container');
            const procedureTemplate = document.getElementById('procedures_fields_template');
            const procedure_new_id = new Date().getTime();
            const procedure_regexp = new RegExp('new_procedures', 'g');
            const procedureContent = procedureTemplate.innerHTML.replace(procedure_regexp, procedure_new_id);
            const newProcedureFields = document.createRange().createContextualFragment(procedureContent);
            proceduresContainer.appendChild(newProcedureFields);


            /*削除機能（未完成）
            const deleteProcedureButtons = newProcedureFields.querySelectorAll('.delete-procedure-btn');
            deleteProcedureButtons.forEach(function(deleteProcedureButton) {
                console.log(3);
                deleteProcedureButton.addEventListener('click', function() {
                    this.closest('.procedure-field').remove();
                });
            });*/
        });
    }
});