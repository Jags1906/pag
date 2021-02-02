Vue.component('navbar', {
  template: html`
    <nav class='light-blue darken-2'>
      <div class="nav-wrapper contained">
        <a :href='baseUrl + "index.php"' class="brand-logo">
          {{ title }}
        </a>
      </div>
    </nav>
  `,
  data: () => ({
    baseUrl: window.BASE_URL,
    title: document.title
  }),
});