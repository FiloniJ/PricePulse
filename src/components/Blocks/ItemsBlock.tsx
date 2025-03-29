import React from 'react';
import Pagination from '../Pagination';
import DateFilter from '../DateFilter';
import Items from '../Items';
import Spinner from '../../common/Spinner';
import { useAppDispatch, useAppSelector } from '../../store/hook';
import { SET_URLS } from '../../store/constants';
import { URLType } from '../../types/bd';

const ItemsBlock = () => {
    const dispatch = useAppDispatch()
    const updatePrices = useAppSelector(state => state.updatePrices)
    const updateURLs = useAppSelector(state => state.updateURLs)
    const urls = useAppSelector(state => state.urls)
    const prices = useAppSelector(state => state.prices)

    const deleteItem = (id: number) => {
        dispatch({type: SET_URLS, payload: urls.filter((url: URLType) => url.id !== id)})
    }

    return (
        <div className="pt-44">
          <fieldset>
            <legend>Настройки</legend>
            <Pagination />
            <DateFilter />
          </fieldset>
          {(updateURLs || updatePrices) ? <Spinner />
          : <Items
            urls = {urls}
            prices = {prices}
            deleteItem = {deleteItem}
          />}
          <Pagination />
        </div>
    )
}

export default ItemsBlock