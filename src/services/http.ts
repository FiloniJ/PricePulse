import axios from "axios";
import config from "../config";

const mAxios = axios.create({
  baseURL: `http://${config.host}:${config.port}`
})

export default mAxios