<template>
<div class="w1180">
    <div class="header">
        <div class="left"></div>
        <div class="right"></div>
    </div>
</div>
</template>
<script>

export default {
    data(){
        return {}
    }
}
</script>

<style scoped>
    .header{
        display:flex;
        justify-content:space-between;
    }
    .left,.right{
        width:100%;
        border:1px solid red;
    }
</style>
