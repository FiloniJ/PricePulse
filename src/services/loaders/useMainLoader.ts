import useLoadPrices from "./useLoadPrices"
import useLoadURLs from "./useLoadURLs"
import { useAppDispatch, useAppSelector } from "../../store/hook"
import { useEffect } from "react"


const useMainLoader = (): void => {
  const page = useAppSelector(state => state.page)
  const inOnePage = useAppSelector(state => state.inOnePage)
  const dateFrom = useAppSelector(state => state.dateFrom)
  const dateTo = useAppSelector(state => state.dateTo)
  const isActiveURLs = useAppSelector(state => state.isActiveURLs)
  const dispatch = useAppDispatch()

  useEffect(() => {
    if (page && page > 0) {
      dispatch({type: 'UPDATE_URLS', payload: true})
      dispatch({type: 'UPDATE_PRICES', payload: true})
    }
  }, [page, inOnePage, dateFrom, dateTo])

  useLoadURLs(isActiveURLs, (page - 1) * inOnePage, inOnePage)
  useLoadPrices((page - 1) * inOnePage, inOnePage)
}

export default useMainLoader