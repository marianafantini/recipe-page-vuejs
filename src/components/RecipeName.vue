<script setup lang="ts">
const props = defineProps(['recipe'])

</script>

<template class="wrapper">
  <img src="/public/images/image-omelette.jpeg"
       alt="Image of an omelette"
       class="recipe-image"  />
  <h1 class="font-young color-stone-900">{{props.recipe.name}}</h1>
  <p class="description color-stone-600">{{props.recipe.description}}</p>
</template>

<style scoped>

h1 {
  font-size: 2.5rem;
}

.description {
  font-size: 1rem;
}

.wrapper {
  display: flex;
  flex-direction: column;
}

.recipe-image {
  height: auto;
  width: 100%;
  border-radius: 2rem;
}

</style>
