<script setup lang="ts">
const props = defineProps(['instructions']);

const instructions = props.instructions;

</script>

<template>
  <h2 class="font-young color-brown-800">Instructions</h2>
  <ol>
    <li v-for="instruction in instructions"
        class="color-stone-600"
        v-html="instruction.content">
    </li>
  </ol>
</template>

<style scoped>

</style>
