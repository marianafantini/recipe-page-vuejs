<script setup lang="ts">
const props = defineProps(['recipe'])

</script>

<template class="wrapper">
  <img src="/public/images/image-omelette.jpeg"
       alt="Image of an omelette"
       class="recipe-image"  />
  <h1 class="font-young">{{props.recipe.name}}</h1>
  <p>{{props.recipe.description}}</p>
</template>

<style scoped>

.wrapper {
  display: flex;
  flex-direction: column;
}

.recipe-image {
  max-height: 15rem;
  height: 100%;
  width: auto;
}

</style>
