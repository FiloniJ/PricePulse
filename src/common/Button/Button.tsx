import './Button.css'

type Props = {
  onClick: () => void,
  name: string,
  h?: number,
  w?: number,
  isLoading?: boolean,
  hidden?: boolean,
  class?: string,
  desClass?: string,
}

const Button = (props: Props) => {
  const buttonClicked = () => {
    props.onClick()
  }

  return (
    <div>
      <button style={{
          height: props.h && props.h + 'px', width: props.w && props.w + 'px'
        }}
        onClick={buttonClicked}
        className={`layout but ${props.isLoading && 'loader'} ${props.hidden && 'hide'} ${props.class && props.class}`}
        disabled={props.isLoading}
      >
        <div className={`flex justify-center items-center ${props.desClass && props.desClass}`}>
          {!props.isLoading && props.name }
        </div>
      </button>
    </div>
  )
}

export default Button