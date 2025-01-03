<template>
    <body>
      <div id="register" class="container">
        <form v-on:submit.prevent="register">
          <h1>Create Account</h1>
          <div role="alert" v-if="registrationErrors">
            {{ registrationErrorMsg }}
          </div>
          <div class="form-input-group">
            <label for="username">Username</label>
            <input
              type="text"
              id="username"
              v-model="user.username"
              required
              autofocus
            />
          </div>
          <div class="form-input-group">
            <label for="password">Password</label>
            <input
              type="password"
              id="password"
              v-model="user.password"
              required
            />
          </div>
          <div class="form-input-group">
            <label for="confirmPassword">Confirm Password</label>
            <input
              type="password"
              id="confirmPassword"
              v-model="user.confirmPassword"
              required
            />
          </div>
          <div class="form-input-group">
            <label for="accountType">Account Type</label>
            <select name="account-type" id="" v-model="user.role">
              <option value="" disabled selected>--</option>
              <option value="BREWER">Brewer</option>
              <option value="USER">Beer Lover</option>
            </select>
          </div>
          <button type="submit">Create Account</button>
          <p class="create">
            <router-link v-bind:to="{ name: 'login' }"
              >Already have an account? Log in.</router-link
            >
          </p>
        </form>
      </div>
    </body>
  </template>
  
  <script>
  import authService from "../services/AuthService";
  
  export default {
    data() {
      return {
        user: {
          username: "",
          password: "",
          confirmPassword: "",
          role: "",
        },
        registrationErrors: false,
        registrationErrorMsg: "There were problems registering this user.",
      };
    },
    methods: {
      register() {
        if (
          this.user.password != this.user.confirmPassword ||
          this.user.role == "--"
        ) {
          this.registrationErrors = true;
          this.registrationErrorMsg =
            "Invalid registration. Confirm Passwords match and account type is chosen.";
        } else {
          authService
            .register(this.user)
            .then((response) => {
              if (response.status == 201) {
                this.$router.push({
                  path: "/login",
                  query: { registration: "success" },
                });
              }
            })
            .catch((error) => {
              const response = error.response;
              this.registrationErrors = true;
              if (response.status === 400) {
                this.registrationErrorMsg = "Bad Request: Validation Errors";
              }
            });
        }
      },
      clearErrors() {
        this.registrationErrors = false;
        this.registrationErrorMsg = "There were problems registering this user.";
      },
    },
  };
  </script>
  
  <style scoped>
  p {
  font-size: 18px;
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
  
  form {
    border: 1px solid black;
    border-radius: 10px;
    padding: 3rem;
    background-color: rgba(255, 255, 255, 0.8);
    width: 100%;
    max-width: 400px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
  }
  
  select{
    border-radius: 10px;
    height: 37px;
    width: 63%
  }
  option {
    font-size: 18px;
  }
  </style>
  