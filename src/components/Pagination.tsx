import React from 'react'
import Button from '../common/Button/Button'
import { useAppDispatch, useAppSelector } from '../store/hook'

const Pagination: React.FC = () => {
  const dispatch = useAppDispatch()
  const page = useAppSelector(state => state.page)
  const inOnePage = useAppSelector(state => state.inOnePage)
  const maxPage = useAppSelector(state => Math.ceil(state.urlsCount/inOnePage))
  
  const setPage = (id: number): void => {
    dispatch({type: 'SET_PAGINATION_PAGE', payload: id})
  }

  const changeSelectFilter = (el: React.ChangeEvent<HTMLSelectElement>): void => {
    dispatch({type: 'SET_ITEMS_KOL', payload: el.target.value})
    dispatch({type: 'UPDATE_PRICES', payload: true})
  }

  const checkPageChange = (e: React.ChangeEvent<HTMLInputElement>): void => {
    let value = Number(e.target.value)
    if (value > 0) {
      if (value <= maxPage) {
        setPage(value)
      }
    }
  }

  const loadPage = (dif: number): void => {
    let newPage = Number(page) + dif
    if (newPage > maxPage) {
      newPage = maxPage
    }
    if (newPage === page) {
      return
    }
    if (newPage <= 0) {
      newPage = 1
    }
    setPage(newPage)
    if (newPage !== page ) {
      dispatch({type: 'UPDATE_PRICES', payload: true})
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
          <option>3</option>
          <option>5</option>
          <option>10</option>
          <option>15</option>
          <option>20</option>
        </select>
      </div>
    </div>
  )
}

export default Pagination