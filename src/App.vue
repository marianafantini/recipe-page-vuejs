<script setup lang="ts">
import RecipeName from "@/components/RecipeName.vue";
import RecipeContent from "@/components/RecipeContent.vue";

const recipe = {
  name: "Simple Omelette Recipe",
  description: "An easy and quick dish, perfect for any meal. This classic omelette combines beaten eggs cooked to perfection, optionally filled with your choice of cheese, vegetables, or meats.",
  preparationTime: {
    total: "Approximately 10 minutes",
    preparation: "5 minutes",
    cooking: "5 minutes"
  },
  ingredients: ["2-3 large eggs", "Salt, to taste", "Pepper, to taste", "1 tablespoon of butter or oil", "Optional fillings: cheese, diced vegetables, cooked meats, herbs"],
  instructions: [
    {
      step: 1,
      content: "<b>Beat the eggs:</b> In a bowl, beat the eggs with a pinch of salt and pepper until they are well mixed. You can add a tablespoon of water or milk for a fluffier texture."
    },
    {
      step: 2,
      content: "<b>Heat the pan:</b> Place a non-stick frying pan over medium heat and add butter or oil."
    },
    {
      step: 3,
      content: "<b>Cook the omelette:</b> Once the butter is melted and bubbling, pour in the eggs. Tilt the pan to ensure the eggs evenly coat the surface."
    },
    {
      step: 4,
      content: "<b>Add fillings (optional):</b> When the eggs begin to set at the edges but are still slightly runny in the middle, sprinkle your chosen fillings over one half of the omelette."
    },
    {
      step: 5,
      content: "<b>Fold and serve:</b> As the omelette continues to cook, carefully lift one edge and fold it over the fillings. Let it cook for another minute, then slide it onto a plate."
    },
    {
      step: 6,
      content: "<b>Enjoy:</b> Serve hot, with additional salt and pepper if needed."
    }
  ],
  nutrition: {
    calories: 277,
    carbs: 0,
    protein: 20,
    fat: 22
  }
};
</script>

<template>
  <div class="recipe-wrapper">
    <header>
      <RecipeName :recipe="recipe"></RecipeName>
    </header>

    <RecipeContent :recipe="recipe"></RecipeContent>
  </div>
</template>

<style scoped>

header {
  width: 100%;
}

.recipe-wrapper {
  display: flex;
  flex-direction: column;
  background-color: var(--white);
  margin: 0;
}

@media (min-width: 48rem) {
  .recipe-wrapper {
    width: 85%;
    padding: 2rem;
    border-radius: 2rem;
    margin: 2rem 0;
  }
}

@media (min-width: 60rem) {
  .recipe-wrapper {
    width: 60%;
    padding: 2rem;
    border-radius: 2rem;
  }
}

</style>
