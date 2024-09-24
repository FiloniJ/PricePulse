import config from '../config'
import { getTodayDate, getOldDate } from '../services/nowDate'
import { PayloadAction } from '@reduxjs/toolkit'
import { PriceType, URLType } from '../types/bd'
import { createStore } from 'redux'
import { dailyPriceType } from '../services/getPrices'

type initialStateType = {
  showPriceHistory: boolean,
  server: string,
  page: number,
  inOnePage: number,
  dateFrom: string,
  dateTo: string,
  isActiveURLs: number,
  lastUpdateDate?: string
  urls?: Array<URLType>,
  prices?: Array<PriceType>,
  historyItemId?: number | boolean,
  updatePrices?: boolean,
  updateURLs?: boolean,
  dailyPrices?: dailyPriceType[][],
  urlsCount?: number
}

const defaultState: initialStateType = {
  showPriceHistory: false,
  server: `http://${config.host}:${config.port}`,
  page: 1,
  inOnePage: 5,
  dateFrom: getOldDate(30),
  dateTo: getTodayDate(),
  isActiveURLs: 1,
  historyItemId: false
}

const reducer = (state = defaultState, action: PayloadAction<any>) => {
  switch(action.type) {
    case 'SET_MIN_PRICES' :
      return {...state, prices: action.payload}
    case 'SET_URLS' :
      return {...state, urls: action.payload}
    case 'SHOW_PRICE_HISTORY' :
      return {...state, historyItemId: action.payload} 
    case 'SET_DAYILY_PRICES' :
      return {...state, dailyPrices: action.payload}
    case 'SET_PAGINATION_PAGE' :
      return {...state, page: action.payload}
    case 'SET_ITEMS_KOL' :
      return {...state, inOnePage: action.payload}
    case 'SET_DATE_FROM' :
      return {...state, dateFrom: action.payload}
    case 'SET_DATE_TO' :
      return {...state, dateTo: action.payload}
    case 'SET_LAST_UPDATE_DATE' :
      return {...state, lastUpdateDate: action.payload}
    case 'UPDATE_PRICES' :
      return {...state, updatePrices: action.payload}
    case 'UPDATE_URLS' :
      return {...state, updateURLs: action.payload}
    case 'SET_URLS_COUNT' :
      return {...state, urlsCount: action.payload}
    case 'SET_URLS_ACTIVE' :
      return {...state, isActiveURLs: action.payload}
    default:
      return {...state}
  }
}

// let store = configureStore({reducer})
const store = createStore(reducer, defaultState)

export type RootState = ReturnType<typeof store.getState>
export type AppDispatch = typeof store.dispatch

export default store