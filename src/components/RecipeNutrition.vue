<script setup lang="ts">
const props = defineProps(['nutrition']);
</script>

<template>
  <div class="preparation-section">
    <h2>Nutrition</h2>
    <p>The table below shows nutritional values per serving without the additional fillings.</p>

    <table class="nutrition-table">
      <tbody>
      <tr>
        <td>
          Calories
        </td>
        <td>
          {{ props.nutrition.calories }}kcal
        </td>
      </tr>
      <tr>
        <td>
          Carbs
        </td>
        <td>
          {{ props.nutrition.carbs }}g
        </td>
      </tr>
      <tr>
        <td>
          Protein
        </td>
        <td>
          {{ props.nutrition.protein }}g
        </td>
      </tr>
      <tr>
        <td>
          Fat
        </td>
        <td>
          {{ props.nutrition.fat }}g
        </td>
      </tr>
      </tbody>
    </table>
  </div>
</template>

<style scoped>
.nutrition-table {
  width: 100%;
}
</style>
