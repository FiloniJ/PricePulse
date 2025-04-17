import mAxios from '../http'
import { useAppDispatch, useAppSelector } from '../../store/hook'
import { URLType } from '../../types/bd'
import { SET_URLS_COUNT, SET_URLS, UPDATE_URLS } from '../../store/constants'

type URLCountsType = {
  count: number,
  rows: URLType[]
}

const useLoadURLs = (isActive: boolean, offset: number, limit: number): void => {
  const dispatch = useAppDispatch()
  const updateURLs = useAppSelector(state => state.updateURLs)

  if (updateURLs) {
    mAxios.get<URLCountsType>('/urls', {
      params: { isActive, offset, limit }
    })
    .then(response => {
      dispatch({type: SET_URLS_COUNT, payload: response.data.count})
      dispatch({type: SET_URLS, payload: response.data.rows})
      dispatch({type: UPDATE_URLS, payload: false})
    })
    .catch((e) => {
      throw new Error(e)
    })
  }
}

export default useLoadURLs