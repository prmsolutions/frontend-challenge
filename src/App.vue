<template>
  <div id='app'>
    <h1>National Parks</h1>
    <ul class='parks-container'>
      <ParkCard v-for='(park, index) in parks' :key='index' :park='park' />
    </ul>
  </div>
</template>

<script>
import ParkCard from './components/ParkCard'

export default {
  name: 'app',
  components: { ParkCard },
  data () {
    return {
      parks: null
    }
  },
  mounted () {
    fetch('https://storage.googleapis.com/public-images-proton/parks2.json')
      .then(res => res.json())
      .then(data => this.parks = data)
  }
}
</script>

<style lang='scss'>
html, body {
  margin: 0;
  padding: 0;

  font-size: 16px;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;

  padding: 1rem;
}

h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
}

a {
  color: #42b970;
}

.parks-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(16rem, 1fr));
  grid-gap: 1rem;
}
</style>
