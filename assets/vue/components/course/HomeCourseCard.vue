<template>
  <div
      class=""
  >
    <div class="flex flex-col flex-center">
      <div class="border p-12 rounded-xl shadow-md">
        <a :href="goToCourseTool(course, tool)">
          <v-icon>
            {{ tool.tool.icon }}
            x-large
          </v-icon>
<!--          <img-->
<!--              :alt="tool.tool.name"-->
<!--              :src="'/img/tools/' + tool.tool.name + '.png'"-->
<!--              class="w-24 h-24 object-contain"-->
<!--          />-->
        </a>
      </div>

      <div class="flex flex-row gap-2 text-gray-500">
        <a
            :href="goToCourseTool(course, tool)"
        >
          {{ tool.ctool.nameToTranslate }}
        </a>

        <button v-if="isCurrentTeacher && changeVisibility" @click="changeVisibility(course, tool)">
          <FontAwesomeIcon
              v-if="tool.ctool.resourceNode.resourceLinks[0].visibility === 2"
              icon="eye" size="lg"
          />
          <FontAwesomeIcon
              v-else
              icon="eye-slash"
              size="lg"
          />
        </button>
      </div>
    </div>
  </div>
</template>

<script>

import {mapGetters} from "vuex";

export default {
  name: 'HomeCourseCard',
  props: {
    course: Object,
    tool: Object,
    goToCourseTool: {
      type: Function,
      required: true
    },
    changeVisibility: {
      type: Function,
      required: false
    },
  },
  computed: {
    ...mapGetters({
      'isCurrentTeacher': 'security/isCurrentTeacher',
    }),
  },
};
</script>
