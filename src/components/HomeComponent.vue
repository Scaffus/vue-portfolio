<template>
  <div class="np">
    <h2>{{ $t("presentation.brief") }}</h2>
    <p>{{ $t("presentation.long") }}</p>
    <p>{{ $t('projects.intro') }}</p>
  </div>
  <ProjectPresentationComponent
    framework="angular"
    additionalLink="https://www.antemeta.fr/"
    projectLink="https://notes-8db5f.web.app/"
    githubLink="https://github.com/Scaffus/Angular-Notes"
  />
  <ProjectPresentationComponent 
    framework="python"
    projectLink="https://github.com/Scaffus/Annonces-Web"
    githubLink="https://github.com/Scaffus?tab=repositories"
  />
</template>

<script>
import ProjectPresentationComponent from "@/components/ProjectPresentationComponent.vue";

export default {
  name: "HomeComponent",
  components: {
    ProjectPresentationComponent,
  },
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

.np
  padding: 1em
  @extend %np

@include ani.typing-ani
@include ani.blink-caret-ani
</style>