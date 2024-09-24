import mAxios from '../services/http'
import React, { useState } from 'react'
import ReactDOM from 'react-dom'
import Button from '../common/Button/Button'
import Header from '../common/Header/Header'
import { useAppDispatch, useAppSelector } from '../store/hook'
import DataIcon from './DataIcon'

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
        dispatch({type: 'UPDATE_URLS', payload: true})
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
            <div className="m-2 flex flex-col w-96">
              <Header name='Добавление нового товара' style={{fontSize: '1.1rem', letterSpacing: '2px'}}/>
              <label htmlFor="url" className='text-center my-2'>Введите URL</label>
              <input
                id="url"
                type="text"
                value={newUrl}
                onChange={e => setNewUrl(e.target.value)}
              />
              <label htmlFor="item-name" className='text-center'>Введите имя товара</label>
              <input className=''
                id="item-name"
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