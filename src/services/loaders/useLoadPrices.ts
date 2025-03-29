import mAxios from '../http'
import getPrices from '../getPrices'
import { useAppDispatch, useAppSelector } from '../../store/hook'
import { PriceType } from '../../types/bd'
import { SET_MIN_PRICES, SET_DAYILY_PRICES, SET_LAST_UPDATE_DATE, UPDATE_PRICES } from '../../store/constants'

const useLoadPrices = (offset: number, limit: number): void => {
  const dispatch = useAppDispatch()
  const updatePrices = useAppSelector(state => state.updatePrices)
  const dateFrom = useAppSelector(state => state.dateFrom)
  const dateTo = useAppSelector(state => state.dateTo)
  const isActive = useAppSelector(state => state.isActiveURLs)

  if (updatePrices) {
    mAxios.get<PriceType[]>('/prices', {
      params : { dateFrom, dateTo, offset, limit, isActive }
    })
    .then(response => {
      const { minPrice, lastDate, dailyPrice } = getPrices(response.data)
      dispatch({type: SET_MIN_PRICES, payload: minPrice})
      dispatch({type: SET_DAYILY_PRICES, payload: dailyPrice})
      dispatch({type: SET_LAST_UPDATE_DATE, payload: lastDate})
      dispatch({type: UPDATE_PRICES, payload: false})
    })
    .catch((e) => {
      throw new Error(e)
    })
  }
}


export default useLoadPrices