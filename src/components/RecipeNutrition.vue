<script setup lang="ts">
const props = defineProps(['nutrition']);
</script>

<template>
  <div class="preparation-section">
    <h2 class="font-young color-brown-800">Nutrition</h2>
    <p class="color-stone-600">The table below shows nutritional values per serving without the additional fillings.</p>

    <table class="nutrition-table color-stone-600">
      <tbody>
      <tr class="border-bottom-grey">
        <td>
          Calories
        </td>
        <td>
          {{ props.nutrition.calories }}kcal
        </td>
      </tr>
      <tr class="border-bottom-grey">
        <td>
          Carbs
        </td>
        <td>
          {{ props.nutrition.carbs }}g
        </td>
      </tr>
      <tr class="border-bottom-grey">
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

table {
  border-collapse: collapse;
}

table tr {
  line-height: 2.5rem;
}

.border-bottom-grey {
  border-bottom: 1px solid var(--stone-150);
}


table td:first-child {
  padding-left: 2rem;
}

table td:last-child {
  color: var(--brown-800);
  font-weight: bold;
}

</style>
