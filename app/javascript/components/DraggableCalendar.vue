<template>
  <div class="calendar">
    <!-- カレンダーの各日に対して、ドラッグアンドドロップ可能な領域を作成 -->
    <div v-for="day in days" :key="day" class="calendar-day">
      <div
        class="drop-zone"
        @drop="drop($event, day)"
        @dragover.prevent
        @dragenter.prevent
      >
        <!-- この日に割り当てられたタスクを表示 -->
        <div
          class="draggable-task"
          v-for="task in tasks[day]"
          :key="task.id"
          draggable="true"
          @dragstart="dragStart($event, task)"
        >
          {{ task.name }}
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      tasks: {},
      days: [],
    };
  },
  created() {
    this.fetchTasks();
    this.days = this.generateDaysForCurrentMonth();
  },
  methods: {
    fetchTasks() {
      axios.get('/api/tasks')
        .then(response => {
          // この例では、APIから取得したタスクをそのまま `tasks` に設定していますが、
          // 必要に応じて `tasks` のデータ構造を調整してください。
          this.tasks = response.data;
        })
        .catch(error => console.error("Failed to fetch tasks: ", error));
    },
    generateDaysForCurrentMonth() {
      const days = [];
      // 現在の月の日数に基づいて days 配列を生成するロジック
      // 例: days = ['2023-01-01', '2023-01-02', ...];
      return days;
    },
    dragStart(event, task) {
      // 既存のメソッド、変更なし
    },
    drop(event, day) {
      // 既存のメソッド、変更なし
    },
  },
};
</script>

<style scoped>
/* スタイリングはこちら */
.drop-zone {
  /* ... */
}
.draggable-task {
  /* ... */
}
</style>
