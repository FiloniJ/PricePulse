import React from 'react'
import DataIcon from './DataIcon'
import { minPriceType } from '../services/getPrices'

type Props = {
  el: {id: number, name: string, url: string}
  idx: number,
  prices: minPriceType[],
  showPriceHistory: (id: number) => void,
  itemDeleteModalCall: (id: number, name: string) => void,
  returnItemForParse: (id: number) => void,
  startParsing: (id: number, url: string) => void,
  isActiveURLs: number
}

const AboutItem: React.FC<Props> = props => {
  return (
    <li key={props.el.id} className='layout md:flex md:flex-col md:items-center'>
      <a href={props.el.url} className='hover:text-amber-500' target='blank'> 
        <div>{`${props.idx + 1}. ${props.el.name}`}</div>
      </a>
      <div className='flex flex-col space-y-1 sm:flex-row'>
        <div className={`grid
            grid-cols-[100px,100px]
            grid-rows-2
            sm:grid-cols-[100px,100px,100px,160px]
            sm:grid-rows-1
            gap-1`
          }>
          <DataIcon
            description='Последняя цена'
            image='nowPrice'
            value={props.prices[props.el.id]?.lastPrice || 0}
          />
          <DataIcon
            description='Минимальная цена'
            image='minPrice'
            value={props.prices[props.el.id]?.minPrice || 0}
          />
          <DataIcon
            description='Превышение последней цены от минимальной'
            image='excessMinPrice'
            value={`+ 
              ${Math.ceil((props.prices[props.el.id]?.lastPrice || 0) / (props.prices[props.el.id]?.minPrice || 1) 
              * 100 - (props.prices[props.el.id] ? 100 : 0))} %`}
          />
          <DataIcon
            description='Дата минимальной цены'
            image='dateOfMinPrice'
            value={props.prices[props.el.id]?.minPriceDay.toString() || ''}
          />
        </div>
        <div className={`
            grid grid-flow-col
            grid-rows-1
            gap-2
            grid-cols-[45px,45px,45px]`
          }>
          <DataIcon
            description='История цен'
            image='priceHistory'
            value=''
            onClick = {() => props.showPriceHistory(props.el.id)}
          />
          {props.isActiveURLs ? 
            <DataIcon
              description='Отключить товар из парсинга'
              image='deleteButton'
              value=''
              onClick = {() => props.itemDeleteModalCall(props.el.id, props.el.name)}
            />
          :
            <DataIcon
              description='Вернуть в парсинг'
              image='itemReturn'
              value=''
              onClick = {() => props.returnItemForParse(props.el.id)}
            />
          }
          <DataIcon
              description='Спарсить данный товар'
              image='start'
              value=''
              onClick = {() => props.startParsing(props.el.id, props.el.url)}
            />
        </div>
      </div>
    </li>
  )
}

export default AboutItem