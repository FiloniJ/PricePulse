import mAxios from '../http'
import { useAppDispatch, useAppSelector } from '../../store/hook'

const useLoadURLs = (isActive: number, offset: number, limit: number): void => {
  const dispatch = useAppDispatch()
  const server = useAppSelector(state => state.server)
  const updateURLs = useAppSelector(state => state.updateURLs)

  if (updateURLs) {
    mAxios.get('/urls', {
      params: { isActive, offset, limit }
    })
    .then(response => {
      dispatch({type: 'SET_URLS_COUNT', payload: response.data.count})
      dispatch({type: 'SET_URLS', payload: response.data.rows})
      dispatch({type: 'UPDATE_URLS', payload: false})
    })
  }
}

export default useLoadURLs