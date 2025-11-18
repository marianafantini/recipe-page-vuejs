<script setup lang="ts">
const props = defineProps(['preparationTime']);

</script>

<template>
  <div class="preparation-section">
    <h2>Preparation time</h2>
    <p><span class="title">Total:</span> {{ props.preparationTime.total }}</p>
    <p><span class="title">Preparation:</span> {{ props.preparationTime.preparation }}</p>
    <p><span class="title">Cooking:</span> {{ props.preparationTime.cooking }}</p>
  </div>
</template>

<style scoped>
.preparation-section {
  padding: 1rem;
  background-color: var(--rose-50)
}

.title {
  font-weight: bold;
}
</style>
