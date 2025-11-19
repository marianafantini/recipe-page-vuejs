<script setup lang="ts">
const props = defineProps(['recipe'])

</script>

<template class="wrapper">
  <img src="/public/images/image-omelette.jpeg"
       alt="Image of an omelette"
       class="recipe-image"/>
  <div class="text-content">
    <h1 class="font-young color-stone-900">{{ props.recipe.name }}</h1>
    <p class="description color-stone-600">{{ props.recipe.description }}</p>
  </div>
</template>

<style scoped>

h1 {
  font-size: 2.25rem;
}

@media (min-width: 48rem) {
  h1 {
    font-size: 2.5rem;
  }
}

.description {
  font-size: 1rem;
}

.wrapper {
  display: flex;
  flex-direction: column;
  width: 100%;
  padding: 1rem;
}

.recipe-image {
  height: auto;
  width: 100%;
}

.text-content {
  padding: 1rem;
}

@media (min-width: 48rem) {
  .recipe-image {
    border-radius: 2rem;
  }
}
</style>
