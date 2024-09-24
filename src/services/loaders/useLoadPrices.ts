import mAxios from '../http'
import getPrices from '../getPrices'
import { useAppDispatch, useAppSelector } from '../../store/hook'

const useLoadPrices = (offset: number, limit: number): void => {
  const dispatch = useAppDispatch()
  const updatePrices = useAppSelector(state => state.updatePrices)
  const dateFrom = useAppSelector(state => state.dateFrom)
  const dateTo = useAppSelector(state => state.dateTo)

  if (updatePrices) {
    mAxios.get('/prices', {
      params : { dateFrom, dateTo, offset, limit }
    })
    .then(response => {
      const { minPrice, lastDate, dailyPrice } = getPrices(response.data)
      dispatch({type: 'SET_MIN_PRICES', payload: minPrice})
      dispatch({type: 'SET_DAYILY_PRICES', payload: dailyPrice})
      dispatch({type: 'SET_LAST_UPDATE_DATE', payload: lastDate})
      dispatch({type: 'UPDATE_PRICES', payload: false})
    })
  }
}


export default useLoadPrices