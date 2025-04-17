import React from 'react'
import './Header.css'

type HeaderProps = {
  name: string,
  className?: string,
  style?: React.CSSProperties,
  children?: React.ReactNode
}

const Header = (props: HeaderProps) => {
  return (
    <div>
      <div className={`layout menu-name ${props.className ? props.className : ''}`} style={props.style}>
        {props.name}
        {props.children}
      </div>
    </div>
  )
}

export default Header