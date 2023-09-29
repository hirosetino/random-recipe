document.addEventListener('turbo:load', () => {
    const slotInner = document.getElementById('slot-inner');
    const startButton = document.getElementById('start-button');
    const stopButton = document.getElementById('stop-button');
    let recipes = []; // レシピデータを格納する配列
    let animationInterval;

    if (!recipes) return null;
  
    // レシピデータの取得（先ほどのコードで取得したデータを代入）
    fetch('/recipes.json')
      .then((response) => response.json())
      .then((data) => {
        recipes = data; // レシピデータを配列に代入
      })
      .catch((error) => {
        console.error('データの取得に失敗しました: ', error);
      });
  
    // スタートボタンのクリック時の処理
    startButton.addEventListener('click', () => {
      if (!animationInterval) {
        startSlotAnimation();
        startButton.disabled = true;
        stopButton.disabled = false;
      }
    });
  
    // ストップボタンのクリック時の処理
    stopButton.addEventListener('click', () => {
      if (animationInterval) {
        clearInterval(animationInterval);
        animationInterval = null;
        startButton.disabled = false;
        stopButton.disabled = true;
      }
    });
  
    // スロットアニメーションを開始する関数
    function startSlotAnimation() {
      let currentIndex = 0;
  
      // 定期的にレシピ情報をスロット内に表示するアニメーション
      animationInterval = setInterval(() => {
        const recipe = recipes[currentIndex];
        const recipeHTML = `
          <div class="slot-recipe">
            <a href="/recipes/${recipe.id}">
              <h3>${recipe.title}</h3>
            </a>
          </div>
        `;
        slotInner.innerHTML = recipeHTML;
  
        // 次のレシピへ
        currentIndex++;
        if (currentIndex >= recipes.length) {
          currentIndex = 0; // ループ
        }
      }, 30);
    }
  
    // スロットアニメーションを停止する関数
    function stopSlotAnimation() {
      clearInterval(animationInterval);
    }
});