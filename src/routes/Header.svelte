<script>
	import logo from '$lib/images/svelte-logo.svg';
	import github from '$lib/images/github.svg';
</script>

<header class="header">

  <div class="logo-container">
    <a href="https://kit.svelte.dev/">
			<img src={logo} alt="GitHub" class="logo"/>
		</a>
  </div>

  <nav class="nav-menu">
    <ul class="nav-list">
      <li class="nav-item"><a href="/" class="nav-link">Home</a></li>
      <li class="nav-item"><a href="/about" class="nav-link">About</a></li>
      <li class="nav-item"><a href="/calculator" class="nav-link">Calculator</a></li>
    </ul>
  </nav>

  <div class="logo-container">
    <a href="https://github.com/your-repository" target="_blank">
      <img src={github} alt="GitHub" class="logo">
    </a>
  </div>

</header>

<style lang='scss'>
  .header {
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
					color: #000;
					&:hover {
						color: #007bff;
					}
				}
			}
		}
  }
</style>