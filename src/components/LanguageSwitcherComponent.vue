<template>
  <!-- <select v-model="$i18n.locale" class="dropdown">
      <option v-for="(lang, i) in langs" :key="`Lang${i}`" :value="lang">
        {{ lang }}
      </option> -->
  <!-- <option value="FR">
            <img src="../assets/flags/fr.svg" alt="French Flag">
        </option>
        <option value="EN">
            <img src="../assets/flags/en.svg" alt="UK Flag">
        </option> -->
  <!-- </select> -->
  <ButtonComponent @btn-click="switchLanguage()" :class="['flag ' + lang]"/>
  <!-- <button :value="lang" @onclick="switchLanguage()" >
    <img
      v-if="lang == 'fr'"
      class="flag"
      :id="lang"
      src="@/assets/flags/fr.svg"
    />
    <img
      v-if="lang == 'en'"
      class="flag"
      :id="lang"
      src="@/assets/flags/en.svg"
    />
  </button> -->
</template>

<script>
import ButtonComponent from "@/components/ButtonComponent.vue";

export default {
  components: {
    ButtonComponent
  },
  data() {
    return {
    //   langs: ["fr", "en"],
      lang: 'en',
      flags: {
          'en': '../assets/flags/en.svg',
          'fr': '../assets/flags/fr.svg',
      } 
    };
  },

  created() {
    this.lang = localStorage.getItem("lang");
    if (this.lang == null) { this.lang = 'en' }
  },

  methods: {
    switchLanguage() {
      if (this.lang == 'fr') {
        this.lang = 'en';
      }
      else if (this.lang == 'en') {
        this.lang = 'fr';
      }
      this.$i18n.locale = this.lang;
      localStorage.setItem('lang', this.lang);
      return;
    },
  },
};
</script>

<style lang="sass" scoped>
@import '../scss/_utils.scss'
@import '../scss/_fonts.scss'

.flag
  padding: .9em 1.2em
  background-repeat: no-repeat

.fr
  background-image: url('../assets/flags/fr.svg')

.en
  background-image: url('../assets/flags/en.svg')
</style>