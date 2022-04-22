<template>
  <div class="np">
    <h1>{{ $t("projects." + framework + ".framework") }}</h1>
    <h3 v-html="$t('projects.' + framework + '.context')"></h3>
    <button @click="togglePreview">
      <img
        v-if="showPreview"
        src="@/assets/icons/caret-down.svg"
        alt="caret down"
      />
      <img
        v-if="!showPreview"
        src="@/assets/icons/caret-up.svg"
        alt="caret up"
      />
    </button>
    <iframe
      v-if="showPreview"
      :src="projectLink"
      frameborder="0"
      seamless="seamless"
    ></iframe>
    <a :href="projectLink" target="blank">Website</a> |
    <a :href="githubLink" target="blank">Source code</a>
  </div>
</template>

<script>
export default {
  name: "ProjectPresentation",
  data() {
    return {
      showPreview: false,
    };
  },
  props: {
    framework: String,
    projectLink: String,
    githubLink: String,
    additionalLink: String,
  },
  methods: {
    togglePreview() {
      this.showPreview = !this.showPreview;
    },
  },
};
</script>

<style lang="sass" scoped>
// @use '../scss/_fonts.scss'
// @use '../scss/_colors.scss'
@use '../scss/_utils.scss'

a
  padding: 1em

iframe
    border: none
    width: 100%
    height: 30em

.np
    @extend %np
    margin-top: 3em
</style>