import express from "express";
import {
    addUser,
    deleteUser,
    getUsers,
    getUser,
    updateUser,
} from "../controllers/user.js";

const router = express.Router()

//TODO
router.get("/", getUsers);
router.get("/:id", getUser);
router.post("/", addUser);
router.delete("/:id", deleteUser);
router.put("/:id", updateUser);

export default router

// kepake
// import express from "express";
// import {
//     getUsers, 
//     getUserById,
//     createUser,
//     updateUser,
//     deleteUser
// } from "../controllers/UserController.js";

// const router = express.Router();

// router.get('/users', getUsers);
// router.get('/users/:id', getUserById);
// router.post('/users', createUser);
// router.patch('/users/:id', updateUser);
// router.delete('/users/:id', deleteUser);

// export default router;


