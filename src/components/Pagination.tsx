import React from 'react'
import Button from '../common/Button/Button'
import { useAppDispatch, useAppSelector } from '../store/hook'
import { SET_PAGINATION_PAGE, SET_ITEMS_KOL, UPDATE_PRICES} from '../store/constants'

const Pagination: React.FC = () => {
  const dispatch = useAppDispatch()
  const { page, inOnePage, maxPage } = useAppSelector(state => ({
    page: state.page,
    inOnePage: state.inOnePage,
    maxPage: Math.ceil(state.urlsCount/state.inOnePage),
  }))
  
  const setPage = (id: number): void => {
    dispatch({type: SET_PAGINATION_PAGE, payload: id})
  }

  const changeSelectFilter = (el: React.ChangeEvent<HTMLSelectElement>): void => {
    dispatch({type: SET_ITEMS_KOL, payload: el.target.value})
    dispatch({type: UPDATE_PRICES, payload: true})
  }

  const checkPageChange = (e: React.ChangeEvent<HTMLInputElement>): void => {
    let value = Number(e.target.value)
    if (value > 0 && value <= maxPage) {
      setPage(value)
    }
  }

  const loadPage = (dif: number): void => {
    let newPage = Math.min(Math.max(page + dif, 1), maxPage);
    if (newPage !== page ) {
      setPage(newPage)
      dispatch({type: UPDATE_PRICES, payload: true})
    }
  }

  return (
    <div className='flex flex-col sm:flex-row justify-center my-2'>
      <div className='flex justify-center'>
        <Button class='h-8 w-8' desClass='text-xs' name='<<' onClick={() => loadPage(1 - page)} />
        <Button class='h-8 w-8' desClass='text-xs' name='<'onClick={() => loadPage(-1)} />
        <input type='number'
          value={page}
          onChange={checkPageChange}
          className='w-14 mx-3 h-8'
          min='1'
        />
        {/* <Button class='h-8 w-20' desClass='text-xs' name='Перейти' onClick={() => loadPage(0)}/> */}
        <Button class='h-8 w-8' desClass='text-xs' name='>' onClick={() => loadPage(1)}/>
        <Button class='h-8 w-8' desClass='text-xs' name='>>' onClick={() => loadPage(maxPage-page)}/>
      </div>
      <div className='flex justify-center mt-1'>
        <span className='mx-2 flex items-center text-xs'>Количество строк:</span>
        <select onChange={changeSelectFilter} value={inOnePage} className='h-8'>
          {[3,5,10,15,20].map(num => (
            <option key={num} value={num}>{num}</option>
          ))}
        </select>
      </div>
    </div>
  )
}

export default Pagination