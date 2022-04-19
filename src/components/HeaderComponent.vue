<template>
  <div class="navbar">
    <nav>
      <ul>
        <router-link to="/">
          <li>
            <img src="../assets/icons/house.svg" />
          </li>
        </router-link>
      </ul>
    </nav>

    <ul>
      <a href="https://github.com/Scaffus?tab=repositories" target="blank">
        <li>
          <img src="../assets/icons/github.svg" alt="Github icon" />
        </li>
      </a>
      <a href="https://www.instagram.com/lucien.nhf/" target="blank">
        <li>
          <img src="../assets/icons/instagram.svg" alt="Instagram icon" />
        </li>
      </a>
      <a href="https://twitter.com/scaffus" target="blank">
        <li>
          <img src="../assets/icons/twitter.svg" alt="Twitter icon" />
        </li>
      </a>
      <a href="https://www.codewars.com/users/Scaffus" target="blank">
        <li>
          <img src="../assets/icons/codewars.svg" alt="Codewars icon" />
        </li>
      </a>
      <a href="mailto:lucien.neuhoff@protonmail.com">
        <li>
          <img src="../assets/icons/envelope.svg" alt="Envelope icon" />
        </li>
      </a>
    </ul>
  </div>
</template>

<script>
export default {
  name: "HeaderComponent",
};
</script>

<style lang="sass" scoped>
@use '../scss/_fonts.scss'
@use '../scss/_colors.scss'
@use '../scss/_utils.scss'

.navbar
  margin-top: 1em
  @extend %flex-center
  zoom: 115%

nav
  padding: 1.5em
  width: 55%
ul
  list-style-type: none
  margin: 0
  padding: 0
li
  font-style: bold
  margin: .2em
  display: inline
  @extend %np-button
</style>