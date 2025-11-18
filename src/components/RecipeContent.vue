<script setup lang="ts">
import RecipeInstructions from "@/components/RecipeInstructions.vue";
import RecipePreparation from "@/components/RecipePreparation.vue";
import RecipeNutrition from "@/components/RecipeNutrition.vue";

const props = defineProps(['recipe']);

</script>

<template>
  <RecipePreparation :preparationTime="recipe.preparationTime"></RecipePreparation>
  <RecipeInstructions :instructions="recipe.instructions"></RecipeInstructions>
  <RecipeNutrition :nutrition="recipe.nutrition"></RecipeNutrition>
</template>

<style scoped>

</style>
