import { useEffect } from "react";
import "./App.css";
import Header from "./common/Header/Header";
import AddURL from "./components/AddURL";
import InactiveItems from "./components/InactiveItems";
import Items from "./components/Items";
import Spinner from "./common/Spinner";
import { useAppDispatch, useAppSelector } from './store/hook';
import PriceHistory from "./components/PriceHistory/PriceHistory";
import Pagination from "./components/Pagination";
import DateFilter from "./components/DateFilter";
import useMainLoader from "./services/loaders/useMainLoader";
import { URLType } from "./types/bd";


function App() {
  const dispatch = useAppDispatch()
  const lastUpdateDate = useAppSelector(state => state.lastUpdateDate)
  const urls = useAppSelector(state => state.urls)
  const prices = useAppSelector(state => state.prices)
  const isActiveURLs = useAppSelector(state => state.isActiveURLs)
  const historyItemId = useAppSelector(state => state.historyItemId)
  const updatePrices = useAppSelector(state => state.updatePrices)
  const updateURLs = useAppSelector(state => state.updateURLs)

  useEffect(() => {
    dispatch({type: 'UPDATE_PRICES', payload: true})
    dispatch({type: 'UPDATE_URLS', payload: true})
  }, [])

  const deleteItem = (id: number) => {
    dispatch({type: 'SET_URLS', payload: urls.filter((url: URLType) => url.id !== id)})
  }
  useMainLoader()

  return (
    <div>
      <div className="fixed w-full z-10">
        <Header name='Парсер цен'>
          <div className="text-sm tracking-tight">
            <span>Дата последнего обновления: {lastUpdateDate}</span>
          </div>
          <div className="flex justify-center">
            <AddURL />
            <InactiveItems />
          </div>
          <span className="text-sm tracking-tight">
            {isActiveURLs ? 'Список для парсинга' : 'Отключённые из парсинга'}
          </span>
        </Header>
        
      </div>
      {historyItemId &&
        <PriceHistory />
      }
      {(prices && urls) && 
        <div className="pt-36">
          <Pagination />
          <DateFilter />
          {(updateURLs || updatePrices) ? <Spinner />
          : <Items
            urls = {urls}
            prices = {prices}
            deleteItem = {deleteItem}
          />}
          <Pagination />
        </div>
      }
    </div>
  )
}

export default App;
