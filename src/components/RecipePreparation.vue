<script setup lang="ts">
const props = defineProps(['preparationTime']);

</script>

<template>
  <div class="preparation-section">
    <h3 class="color-rose-800">Preparation time</h3>
    <ul>
      <li class="color-stone-600"><span class="title">Total:</span> {{
          props.preparationTime.total
        }}
      </li>
      <li class="color-stone-600"><span class="title">Preparation:</span>
        {{ props.preparationTime.preparation }}
      </li>
      <li class="color-stone-600"><span class="title">Cooking:</span>
        {{ props.preparationTime.cooking }}
      </li>
    </ul>
  </div>
</template>

<style scoped>
.preparation-section {
  padding: 0.5rem 2rem;
  background-color: var(--rose-50);
  border-radius: 0.75rem;
}

.title {
  font-weight: bold;
}
</style>
