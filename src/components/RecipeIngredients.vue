<script setup lang="ts">
const props = defineProps(['ingredients']);

const ingredients = props.ingredients;

</script>

<template>
  <h2 class="font-young color-brown-800">Ingredients</h2>
  <ul>
    <li v-for="ingredient in ingredients"
        class="color-stone-600"
        v-text="ingredient">
    </li>
  </ul>
</template>

<style scoped>

</style>
