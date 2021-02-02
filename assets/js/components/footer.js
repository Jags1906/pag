Vue.component('app-footer', {
  template: html`
    <div>
      <footer class="footer">
        <p class="p-footer">
          &copy;{{ year }} - {{ owner }}.
        </p>
      </footer>
    </div>
  `,
  data: () => ({
    year: new Date().getFullYear(),
    owner: 'GueZarCode',
  })
});