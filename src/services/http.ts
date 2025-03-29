import axios, { AxiosError } from "axios";
import config from "../config";

const mAxios = axios.create({
  baseURL: `http://${config.host}:${config.port}`
})

mAxios.interceptors.response.use(
  (response) => response,
  (error: AxiosError) => {
    if (error.response) console.error(`Код ошибки - ${error.response.status}: `, error.response.data)
    else if (error.request) console.error('Сервер недоступен')
    else console.error('Ошибка запроса', error.message)
    return Promise.reject(error)
  }
)

export default mAxios