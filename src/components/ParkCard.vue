<template>
  <li class='park-card'>
    <img :src='park.Thumbnail'/>
    <h3 class='park-card__name'>{{ park.Name }}</h3>
    <p>Location: {{ park.Location }}</p>
    <p>Established: {{ park.Established }}</p>
    <p>Area: {{ park.Area }}</p>
  </li>
</template>

<script>
export default {
  name: 'ParkCard',
  props: ['park']
}
</script>

<style lang='scss' scoped>
.park-card {
  border: 1px solid black;
}
</style>