<template>
  <HeaderComponent />
  <router-view />
</template>

<script>
import HeaderComponent from "@/components/HeaderComponent.vue";

export default {
  components: {
    HeaderComponent,
  },
  created() {
    if (localStorage.getItem('lang') == null) {
      localStorage.setItem('lang', 'en');
      return;
    }
    this.$i18n.locale = localStorage.getItem('lang')
    return;
  }
};
</script>

<style lang="sass">
@use './scss/_fonts.scss'
@use './scss/_colors.scss'
@import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@100;200&family=Mulish:wght@300&family=Roboto:wght@300&family=Rubik:wght@300&display=swap')

*
  font-family: 'JetBrains Mono', monospace
  color: fonts.$primary

body
  background-color: colors.$bg-primary

// ? Container
.container
  padding-right: 15px
  padding-left: 15px
  margin-right: auto
  margin-left: auto

@media (min-width: 768px)
  .container
    width: 750px

@media (min-width: 992px)
  .container
    width: 970px

@media (min-width: 1200px)
  .container
    width: 1170px
</style>
