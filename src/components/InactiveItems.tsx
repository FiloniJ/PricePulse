import React from 'react'
import { useAppDispatch, useAppSelector } from '../store/hook'
import DataIcon from './DataIcon'
import { SET_PAGINATION_PAGE, SET_URLS_ACTIVE, UPDATE_URLS } from '../store/constants'

const InactiveItems: React.FC = () => {
  const dispatch = useAppDispatch()
  const isActiveURLs = useAppSelector(state => state.isActiveURLs)

  const changeActiveItems = (): void => {
    dispatch({type: SET_PAGINATION_PAGE, payload: 1})
    dispatch({type: SET_URLS_ACTIVE, payload: isActiveURLs ? 0 : 1})
    dispatch({type: UPDATE_URLS, payload: true})
  }

  return (
    <div>
      <DataIcon
        description={isActiveURLs ? 'Показать отключённые' : 'Показать активные'}
        image={isActiveURLs ? 'on' : 'off'}
        value=''
        onClick={changeActiveItems}
      />
    </div>
  )
}

export default InactiveItems