<script setup lang="ts">
const props = defineProps(['instructions']);

const instructions = props.instructions.sort((a, b) => a.step - b.step);

</script>

<template>
  <h2>Instructions</h2>
  <ol>
    <li v-for="instruction in instructions"
        v-text="instruction.content">
    </li>
  </ol>
</template>

<style scoped>

</style>
