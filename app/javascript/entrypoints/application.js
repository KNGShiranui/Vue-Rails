console.log('Vite ⚡️ Rails')

console.log('Visit the guide for more information: ', 'https://vite-ruby.netlify.app/guide/rails')
import "@hotwired/turbo-rails"
import "@hotwired/stimulus"
// import "@hotwired/stimulus-loading"
import "../controllers/application"

import 'vue2-animate/dist/vue2-animate.min.css';
import { createApp } from 'vue';
import ExampleComponent from '../components/ExampleComponent.vue';

const app = createApp(ExampleComponent);
app.mount('#app');