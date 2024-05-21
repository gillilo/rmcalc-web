<script>
	import logo from '$lib/images/svelte-logo.svg';
	import github from '$lib/images/github.svg';

	const menus = [
		{
			href: '/',
			name: 'Home',
		},
		{
			href: '/formula',
			name: 'Formula',
		},
		{
			href: '/api',
			name: 'API',
		},
	]
</script>

<header class="header">
  <div class="logo-container">
    <a href="https://github.com/gillilo/rmcalc-web" target="_blank">
			<img src={logo} alt="web app github" class="logo"/>
		</a>
  </div>
  <nav class="nav-menu">
    <ul class="nav-list">
		{#each menus as menu}
			<li class="nav-item"><a href={menu.href} class="nav-link">{menu.name}</a></li>
		{/each}
    </ul>
  </nav>
  <div class="logo-container">
    <a href="https://github.com/gillilo/rmcalc-express" target="_blank">
      <img src={github} alt="express api github" class="logo">
    </a>
  </div>
</header>

<style lang='scss'>
  .header {
		font-size: 1.3rem;
		display: grid;
		grid-template-columns: auto 1fr auto;
		align-items: center;
		.logo-container {
			display: flex;
			align-items: center;
			a {
				.logo {
					height: 40px;
				}
			}
		}
		.nav-menu {
			display: flex;
			justify-content: center;
			.nav-list {
				list-style: none;
				display: flex;
				gap: 1rem;
				padding: 0;
				margin: 0;
				.nav-item {
					.nav-link {
						text-decoration: none;
						color: $color--black;
						&:hover {
							color: $color--primary;
						}
					}
				}
			}
		}
  }
</style>