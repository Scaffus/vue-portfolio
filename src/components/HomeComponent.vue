<template>
  <h1>Home</h1>
  <p class="typewriter">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempore corporis, voluptas cum officia nulla consequatur.</p>
</template>

<script>
export default {
  name: "HomeComponent",
};
</script>

<style lang="sass" scoped>
@use '../scss/_fonts.scss'
@use '../scss/_colors.scss'
@use '../scss/_utils.scss'
@use '../scss/_ani.scss'

.typewriter
    display: flex
    flex-wrap: wrap
    overflow: hidden
    border-right: 0.15em solid orange
    white-space: nowrap
    margin: 0 auto
    letter-spacing: 0.15em
    animation: typing 3.5s steps(40, end), blink-caret 0.75s step-end infinite

@include ani.typing-ani
@include ani.blink-caret-ani
</style>