<template>
<!--  <q-card class="my-card">-->
<!--    <q-img src="https://cdn.quasar.dev/img/parallax2.jpg">-->
<!--      <div class="absolute-bottom text-h6">-->
<!--        Title-->
<!--      </div>-->
<!--    </q-img>-->

<!--    <q-card-section>-->
<!--      {{ lorem }}-->
<!--    </q-card-section>-->
<!--  </q-card>-->

  <q-card class="my-card">
    <div class="">
      <img class="object-cover w-full h-44" src="/img/session_default.png" />
    </div>
    <div class="p-4">
      <div class="h-10 flex flex-row justify-between">
        <div class="line-clamp-2 text-md w-5/6">
          <router-link :to="{ name: 'CourseHome', params: {id: course._id, course: course}}">
            {{ course.title }}
          </router-link>
        </div>
        <div>
          <v-icon>
            mdi-dots-vertical
          </v-icon>
        </div>
      </div>

      <div class="pt-6 ">
        <div class="flex flex-row" v-if="course.users.edges.length">
          <div class="flex flex-row pr-3" v-for="courseRelUser in course.users.edges">
            <div class="pr-2">
              <v-avatar
                  color="primary"
                  size="32"
              ></v-avatar>
            </div>

            <div v-if="course.users.edges.length < 3 " class="text-xs flex-col">
              <div>
              {{ courseRelUser.node.user.firstname }} {{ courseRelUser.node.user.lastname }}
              </div>
              <div>
                Teacher
              </div>
            </div>
          </div>
        </div>

      </div>
<!--    <q-card-actions>-->
<!--        <q-btn-->
<!--            type="a"-->
<!--            :to="{ name: 'CourseHome', params: {id: course.id, course: course}}"-->
<!--            text-color="white"-->
<!--            color="primary"-->
<!--            label="Go"-->
<!--        />-->
<!--      </q-card-actions>-->

    </div>
  </q-card>
</template>

<style scoped>
.my-card {
  width: 100%;
  max-width: 370px;
}
</style>
<script>

export default {
  name: 'CourseCard',
  props: {
    course: Object,
  },
  data() {
    return {
    };
  },
  methods: {
  }
};
</script>
