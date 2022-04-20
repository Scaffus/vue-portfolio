<template>
  <button @click="onClick()">{{ text }}</button>
</template>

<script>
export default {
  name: "Button",
  props: {
    text: String,
  },
  methods: {
    onClick() {
      this.$emit("btn-click");
    },
  },
};
</script>

<style lang="sass">
@use '../scss/_utils.scss'

button
    @extend %np-button
</style>