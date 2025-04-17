import React from 'react'

type Props = {
  onClick?: () => void,
  description: string,
  image: string,
  value: string | number,
}

const DataIcon: React.FC<Props> = props => {
  return (
    <div className='flex mx-2'>
      <img
        onClick={props.onClick}
        className='w-10'
        title={props.description}
        alt={props.description}
        src={`./media/img/icons/${props.image}.png`}>
      </img>
      <span className='flex items-center ml-1 text-nowrap'>
        {props.value}
      </span>
    </div>
  )
}

export default DataIcon