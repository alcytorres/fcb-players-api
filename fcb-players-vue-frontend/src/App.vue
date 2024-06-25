<script>
import Header from "./components/Header.vue";
import Content from "./components/Content.vue";
import Footer from "./components/Footer.vue";

export default {
  name: "app",
  components: {
    Header,
    Content,
    Footer,
  },
};
</script>

<template>
  <div>
    <Header />
    <Content />
    <Footer />
  </div>
</template>

<style></style>