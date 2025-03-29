import { useEffect } from "react";
import "./App.css";
import { useAppDispatch, useAppSelector } from './store/hook';
import PriceHistory from "./components/PriceHistory/PriceHistory";
import useMainLoader from "./services/loaders/useMainLoader";
import { UPDATE_PRICES, UPDATE_URLS } from "./store/constants";
import HeaderBlock from "./components/Blocks/HeaderBlock";
import ItemsBlock from "./components/Blocks/ItemsBlock";


function App() {
  const dispatch = useAppDispatch()
  const urls = useAppSelector(state => state.urls)
  const prices = useAppSelector(state => state.prices)
  const historyItemId = useAppSelector(state => state.historyItemId)

  useEffect(() => {
    dispatch({type: UPDATE_PRICES, payload: true})
    dispatch({type: UPDATE_URLS, payload: true})
  }, [dispatch])
  useMainLoader()

  return (
    <div>
      <HeaderBlock />
      {historyItemId && <PriceHistory />}
      {(prices && urls) && <ItemsBlock />}
    </div>
  )
}

export default App;
