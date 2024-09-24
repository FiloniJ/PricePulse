import React from 'react'
import './Modal.css'

type Props = {
  sm: boolean,
  cm: () => void,
  children?: React.ReactNode
}

const Modal = (props: Props) => {
  return (
    <div>
      {props.sm && (
      <div className="css-modal-target" id="css-modal-target">
          <div className="cmt">
            {/* {props.html} */}
            {props.children}
          </div>
          <a href="#close" onClick={props.cm} className="css-modal-close"></a>    
      </div>)}
    </div>
  )
}

export default Modal