<template>
  <div>
    <button @click="toggleShow">Toggle</button>
    <transition name="bounce">
      <p v-if="show">Vue.jsでリッチなインタラクション!</p>
    </transition>
  </div>
</template>

<script>
export default {
  data() {
    return {
      show: false
    }
  },
  methods: {
    toggleShow() {
      this.show = !this.show;
    }
  }
}
</script>
