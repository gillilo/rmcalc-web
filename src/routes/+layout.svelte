<script>
	import Header from "./Header.svelte";
	import Footer from "./Footer.svelte";
</script>

<div class="app container">
	<div class="mt-3 mb-5">
		<Header />
	</div>
	<main class="">
		<slot />
	</main>
	<div class="mt-5 mb-3">
		<Footer />
	</div>
</div>

<style>
</style>
