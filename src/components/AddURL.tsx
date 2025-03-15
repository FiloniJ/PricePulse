import mAxios from '../services/http'
import React, { useState } from 'react'
import ReactDOM from 'react-dom'
import Button from '../common/Button/Button'
import Header from '../common/Header/Header'
import { useAppDispatch } from '../store/hook'
import DataIcon from './DataIcon'
import { UPDATE_URLS } from '../store/constants'

const AddURL: React.FC = () => {
  const [newUrl, setNewUrl] = useState<string>('')
  const [newItem, setNewItem] = useState<string>('')
  const [showInputs, setInputsShowing] = useState<boolean>(false)
  const dispatch = useAppDispatch()
  const addnewUrl = (): void => {
    if (newItem.length <= 5) return alert('Имя товара должно быть больше 5 симоволов!')
    if (newUrl.length >= 10) {
      mAxios.post('/urls', {
        url: newUrl.slice(0,254),
        name: newItem.slice(0,99),
      })
      .then(response => {
        dispatch({type: UPDATE_URLS, payload: true})
      })
      setInputsShowing(false)
      setNewUrl('')
      setNewItem('')
    } else {
      alert('Длина URL должна быть больше 10 символов!')
    }
  }

  const closeModal = (e: React.MouseEvent): void => {
    if (e.target === e.currentTarget) {
      setInputsShowing(false)
    }
  }

  return (
    <div className='flex items-center justify-center'>
      {showInputs &&
        ReactDOM.createPortal(
          <div className="justify-start modal z-50 flex flex-col" onClick={closeModal}>
            <div className="m-2 flex flex-col w-96 min-w-0">
              <Header 
                name='Добавление нового товара'
                className='max-w-[95vw] mx-auto text-sm tracking-widest'
              />
              <label htmlFor="url" className='text-center my-2'>Введите URL</label>
              <input
                id="url"
                className='max-w-[95vw] mx-auto'
                type="text"
                value={newUrl}
                onChange={e => setNewUrl(e.target.value)}
              />
              <label htmlFor="item-name" className='text-center'>Введите имя товара</label>
              <input
                id="item-name"
                className='max-w-[95vw] mx-auto'
                type="text"
                value={newItem}
                onChange={e => setNewItem(e.target.value)}
              />
            </div>
            <Button onClick={addnewUrl} name='Добавить' />
          </div>,
          document.getElementById('portal') as HTMLElement
        )
      }
      <DataIcon
        description='Добавить новый товар'
        image='addItem'
        value=''
        onClick={() => setInputsShowing(true)}
      />
    </div>
  )
}

export default AddURL