<template>
    <body>
      <div id="login" class="container">
        <form v-on:submit.prevent="login">
          <h1>Please Sign In</h1>
          <div class="alert" role="alert" v-if="invalidCredentials">
            Invalid username and password!
          </div>
          <div class="alert" role="alert" v-if="this.$route.query.registration">
            Thank you for registering, please sign in.
          </div>
          <div class="form-input-group">
            <label for="username">why doesnt this work???</label>
            <input type="text" id="username" v-model="user.username" required autofocus />
          </div>
          <div class="form-input-group">
            <label for="password">test123</label>
            <input type="password" id="password" v-model="user.password" required />
          </div>
          <button type="submit">Boop</button>
          <p>
            <router-link v-bind:to="{ name: 'register' }">Need an account? Sign up.</router-link>
          </p>
        </form>
      </div>
    </body>
  </template>
  
  <script>
  import authService from "../services/AuthService";
  
  export default {
    components: {},
    data() {
      return {
        user: {
          username: "",
          password: "",
        },
        invalidCredentials: false,
      };
    },
    methods: {
      login() {
        authService
          .login(this.user)
          .then((response) => {
            if (response.status == 200) {
              this.$store.commit("SET_AUTH_TOKEN", response.data.token);
              this.$store.commit("SET_USER", response.data.user);
              this.$router.push("/");
            }
          })
          .catch((error) => {
            const response = error.response;
  
            if (response.status === 401) {
              this.invalidCredentials = true;
            }
          });
      },
    },
  };
  </script>

<style scoped>
body {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-rows: 100vh auto;
  grid-template-areas:
    "pic pic"
    "about-us function";
  margin: 0;
}

#function {
  grid-area: function;
  background-color: #FFFFE0;
  color: #FFFFE0;
  padding: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
}

#about-us {
  grid-area: about-us;
  background-color: rgb(13, 40, 18);
  color: #FFFFE0;
  padding: 0px 20px 20px 20px;

}

#about-us h3 {
  font-size: 30px;
  text-align: center;
}

p {
  font-size: 26px;
  text-align: center;
}

.title {
  grid-area: pic;
  display: flex;
  justify-content: flex-start;
  align-items: center;
  background-image: url("@/assets/greenBeer.jpg");
  background-size: cover;
  background-position: bottom;
  background-repeat: no-repeat;
  text-align: center;
  width: 100vw;
  height: 100vh;
  font-size: 100%;
}

img {
  height: 500px;
  justify-content: flex-start;
  margin-left: 150px;
}

</style>