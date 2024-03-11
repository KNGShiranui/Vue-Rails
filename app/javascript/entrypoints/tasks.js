// import { createApp } from 'vue';
// import DraggableCalendar from '../components/DraggableCalendar.vue';

// document.addEventListener('DOMContentLoaded', () => {
//   const el = document.querySelector('#task-calendar');
//   if (el) {
//     createApp(DraggableCalendar).mount(el);
//   }
// });

// マウント対象の要素がDOMに存在することを保証しなくてもよい場合は以下の書き方も可能
import { createApp } from 'vue';
import DraggableCalendar from '../components/DraggableCalendar.vue';

const app = createApp(DraggableCalendar);
app.mount('#task-calendar');