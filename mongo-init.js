// ---------------------------------------------------------------------------------------------------------------------
// ** info: users_crud_api_python instalation
// ---------------------------------------------------------------------------------------------------------------------

db = db.getSiblingDB("users_crud_api_python");

db.createUser({
  roles: [{ role: "readWrite", db: "users_crud_api_python" }],
  user: "users_crud_api_python_app_user",
  pwd: "users_crud_api_python_app_user",
});

db.createCollection("modules_configs");
