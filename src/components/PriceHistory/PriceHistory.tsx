import ReactDOM from 'react-dom'
import './PriceHistory.css'
import { useAppDispatch, useAppSelector } from '../../store/hook'
import draw from './drawSVG'
import { useEffect } from 'react'


const PriceHistory: React.FC = () => {
  const dispatch = useAppDispatch()
  const prices = useAppSelector(state => state.dailyPrices)
  const urls = useAppSelector(state => state.urls)
  const itemId = useAppSelector(state => state.historyItemId)
  const minPrice = useAppSelector(state => state.prices)

  const closePortal = () => {
    dispatch({type: 'SHOW_PRICE_HISTORY', payload: false})
  }

  useEffect(() => {
    if (prices[itemId]?.length > 1) {
      const item = urls.filter((el: {id: number}) => el.id === itemId)
      draw(prices[itemId], minPrice[itemId], item[0].name)
    } else {
      alert('У данного товара нет или только 1 цена в истории!')
      closePortal()
    }
  }, [])
  
  return (
    ReactDOM.createPortal(
      <div
        className='modal z-50 overflow-scroll'
        style={{display: 'inline-block'}}
        id='price_history_draw'
        onClick={closePortal}>
      </div>,
      document.getElementById('portal') as HTMLElement
    )
  )
}

export default PriceHistory