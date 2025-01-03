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
            <label for="username">Username</label>
            <input type="text" id="username" v-model="user.username" required autofocus />
          </div>
          <div class="form-input-group">
            <label for="password">Password</label>
            <input type="password" id="password" v-model="user.password" required />
          </div>
          <button type="submit">Sign in</button>
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
p {
  font-size: 18px;
}

.alert {
  font-size: 18px;
  padding-bottom: 15px;
}

html,
body {
  height: 100%;
  margin: 0;
}

body {
  display: flex;
  justify-content: center;
  align-items: center;
  background-image: url("@/assets/barrels.jpg");
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  height: 100vh;
}

.form-input-group {
  margin-bottom: 1rem;
}

input {
  width: 100%;
  padding: 10px;
  border-radius: 10px;
  border: 1px solid #000;
  box-sizing: border-box;
}

label {
  margin-right: 0.5rem;
  font-size: 20px;
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  padding: 20px;
}

form {
  border: 1px solid black;
  border-radius: 10px;
  padding: 3rem;
  background-color: rgba(255, 255, 255, 0.8);
  width: 100%;
  max-width: 400px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

button {
  display: block;
  width: 100%;
  border-radius: 10px;
  margin-top: 1rem;
  padding: 10px;
  font-size: 15px;
  cursor: pointer;
  color: black;
  font-weight: bold;
}

button:hover {
  background-color: rgba(228, 186, 61, 0.753);
}</style>