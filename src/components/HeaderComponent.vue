<template>
  <div class="navbar">
    <nav>
      <router-link to="/">
        <li class="home">
          <img src="../assets/icons/house.svg" />
        </li>
      </router-link>
    </nav>

    <!-- 
      Language Switcher
     -->
    <LanguageSwitcherComponent />

    <!-- 
      Socials | With Mobile Mode
     -->
    <!-- <div :class="[mode]">
      <button
        @click="toggleShowSocials()"
        v-if="mode == 'mobile'"
        class="dropdown"
      >
        <img
          v-if="!showSocials"
          src="../assets/icons/caret-down.svg"
          alt="Arrow down"
        />
        <img
          v-if="showSocials"
          src="../assets/icons/caret-up.svg"
          alt="Arrow up"
        />
      </button>
      <div class="socials" v-if="showSocials">
          <ul>
            <a
              href="https://github.com/Scaffus?tab=repositories"
              target="blank"
            >
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
      </div> -->

    <!-- 
      Socials | Only desktop
     -->
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
import LanguageSwitcherComponent from "@/components/LanguageSwitcherComponent.vue";

export default {
  name: "HeaderComponent",
  components: {
    LanguageSwitcherComponent,
  },

  created() {
    window.addEventListener("resize", this.checkScreenSize);
    this.checkScreenSize();
  },

  data() {
    return {
      showSocials: true,
      mode: "desktop",
      windowWidth: null,
    };
  },

  methods: {
    checkScreenSize() {
      this.windowWidth = window.innerWidth;
      if (this.windowWidth <= 992) {
        this.mode = "mobile";
        this.showSocials = false;
        return;
      }
      this.mode = "desktop";
      this.showSocials = true;
      return;
    },

    toggleShowSocials() {
      this.showSocials = !this.showSocials;
    },
  },
};
</script>

<style lang="sass" scoped>
@use '../scss/_fonts.scss'
@use '../scss/_colors.scss'
@use '../scss/_utils.scss'

*
  list-style-type: none

.navbar
  margin-top: 1em
  @extend %flex-center
  zoom: 115%

  .home
    left: 0
    top: 0

  nav
    padding: 1.5em
    // margin-right: 50%

    ul
      margin: 0
      padding: 0

  li
    margin: .2em
    @extend %np-button
    @media (max-width: 992px)
      margin-top: .5em
      display: block

    @media (min-width: 993px)
      display: inline
</style>