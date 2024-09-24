import { getTodayDate, getOldDate } from '../services/nowDate'
import { daysInterval } from '../config'
import { useAppDispatch, useAppSelector } from '../store/hook'
import React from 'react'

const DateFilter: React.FC = () => {
  const dispatch = useAppDispatch()
  const dateFrom = useAppSelector(state => state.dateFrom)
  const dateTo = useAppSelector(state => state.dateTo)
  
  const checkMinMax = (date: string): string => {
    const today = getTodayDate()
    const minDate = getOldDate(daysInterval)
    if (date > today) {
      return today
    }
    if (date < minDate) {
      return minDate
    }
    return date
  }
  
  const changeDateFrom = (e: React.ChangeEvent<HTMLInputElement>): void => {
    dispatch({type: 'SET_DATE_FROM', payload: checkMinMax(e.target.value)})
  }

  const changeDateTo = (e: React.ChangeEvent<HTMLInputElement>): void => {
    dispatch({type: 'SET_DATE_TO', payload: checkMinMax(e.target.value)})
  }

  return (
    <div className='flex justify-center'>
      <span>От: </span>
      <input 
        className='mx-3' 
        type="date" 
        value={dateFrom}
        onChange={changeDateFrom}
        min={getOldDate(daysInterval)}
        max={getTodayDate()}
      />
      <span>До: </span>
      <input 
        className='mx-3' 
        type="date" 
        value={dateTo}
        onChange={changeDateTo}
        min={getOldDate(daysInterval)}
        max={getTodayDate()}
      />
    </div>
  )
}

export default DateFilter