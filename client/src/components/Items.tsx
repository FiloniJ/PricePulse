import Button from '../common/Button/Button'
import AboutItem from './AboutItem'
import { useState } from 'react'
import mAxios from '../services/http'
import { useAppDispatch, useAppSelector } from '../store/hook'
import { URLType } from '../types/bd'
import { minPriceType } from '../services/getPrices'
import ReactDOM from 'react-dom'
import { SHOW_PRICE_HISTORY } from '../store/constants'

type Props = {
  deleteItem: (id: number) => void
  urls: URLType[]
  prices: minPriceType[]
}

const Items: React.FC<Props> = props => {
  const [showModal, setShowModal] = useState<boolean>(false)
  const [lastItemName, setLastItemName] = useState<string>('')
  const [lastItemId, setLastItemId] = useState<number>(0)
  const isActiveURLs = useAppSelector(state => state.isActiveURLs)
  const dispatch = useAppDispatch()
  
  const acceptModal = (): void => {
    setShowModal(false)
    mAxios.patch('/urls', { id: lastItemId, isActive: false })
    props.deleteItem(lastItemId)
  }

  const itemDeleteModalCall = (id: number, name: string): void => {
    setLastItemId(id)
    setLastItemName(name)
    setShowModal(true)
  }

  const returnItemForParse = (id: number): void => {
    props.deleteItem(id)
    mAxios.patch('/urls', { isActive: true, id })
  }

  const showPriceHistory = (id: number): void => {
    dispatch({type: SHOW_PRICE_HISTORY, payload: id})
  }

  const startParsing = (id: number, url: string): void => {
    mAxios.get('/parse', {
      params: {id, url}
    })
  }

  return (
    <div>
      {showModal && 
        ReactDOM.createPortal(
          <div className="modal z-50 flex flex-col items-center" onClick={():void => setShowModal(false)}>
            <span>{`Отключить товар «${lastItemName}» из парсинга?`}</span>
            <Button name='Отключить' onClick={acceptModal}/>
          </div>,
          document.getElementById('portal') as HTMLElement
        )
      }
      <ul>
        {props.urls.length === 0 && 
          <span className='flex justify-center my-5 text-2xl text-rose-800'>
            Нет товаров по данным параметрам
          </span>
        }
        {props.urls.map((el: {id: number, name: string, url: string}, idx: number) => {
          return (
            <AboutItem
              key = {el.id}
              el = {el} 
              idx = {idx}
              showPriceHistory = { showPriceHistory }
              itemDeleteModalCall = { itemDeleteModalCall }
              returnItemForParse = { returnItemForParse }
              startParsing = { startParsing }
              isActiveURLs = { isActiveURLs }
              prices = { props.prices }
            />
          )
        })}
      </ul>
    </div>
  )
}

export default Items