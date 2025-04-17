import * as d3 from 'd3'
import './PriceHistory.css'
let svg, x, y, radius

const onMouseEnter = (e) => {
  const id = e.target.attributes.idn.value
  const info = d3.select(`#price${id}`)
  info.style('font-size', '15px')
  const circle = d3.select(`#circle${id}`)
  circle
    .attr('r',radius)
    .transition()
    .duration(50)
    .attr('r',10)
}

const onMouseLeave = (e) => {
  const id = e.target.attributes.idn.value
  const info = d3.select(`#price${id}`)
  info
    .style('font-size','15px')
    .transition()
    .duration(500)
    .style('font-size','0px')
  const circle = d3.select(`#circle${id}`)
  circle
    .transition()
    .duration(500)
    .attr('r', radius)
}

const pointsAndValue = (data, minPrice, name) => {
  let isUp = false
  let isFirstValue = true
  svg.append('text')
    .attr('x','50%')
    .attr('y','90%')
    .attr('width','100%')
    .text(name)
    .style('text-anchor', 'middle')
    .style('fill', '#ddd')
  const valuesGroup = svg.append('g')
  const len = data.length
  radius = 7/(len+100)*100
  if (radius < 4) radius = 4
  const fontSize = (len <= 15) ? '10px' : '0px'
  data.forEach((d, idx) => {
    isUp = !isUp
    isUp = (len > 15) ? false : isUp
    const innerGroup = valuesGroup.append('g')
    innerGroup.append('text')
      .attr('x', x(d.date))
      .attr('y', y(d.price) + (isUp ? 35 : -25))
      .attr('id',`price${idx}`)
      .text(`${d.price} Р`)
      .style('fill', '#ddd')
      .style('text-anchor', `${isFirstValue ? 'start' : 'middle'}`)
      .style('font-size', fontSize)
    const el = innerGroup.append('circle')
      .attr('cx', x(d.date))
      .attr('cy', y(d.price))
      .attr('r', radius)
      .attr('id', `circle${idx}`)
      .attr('idn', idx)
      .style('fill', `${d.price === minPrice.minPrice ? '#d11313' : '#7cb5ec'}`)
    if (len > 15) {
      el.on('mouseover',onMouseEnter)
      el.on('mouseleave', onMouseLeave)
    }
    isFirstValue = false
  })
}

const bottomArea = (data) => {
  const areaPath = d3.area()
    .x(d => x(d.date))
    .y0(d => y(d.price))
    .y1(() => y(0))
    .curve(d3.curveMonotoneX)(data)

  svg.append('g')
    .append('path')
    .style('fill', '#7cb5ec')
    .attr('d', areaPath)
    .attr('opacity', 0.1)
}


const draw = (prices, minPrice, name) => {
  let margin = {top: 40, right: 20, bottom: 30, left: 50}
  var width = 960 - margin.left - margin.right
  var height = 500 - margin.top - margin.bottom

  svg = d3.select('#price_history_draw')
    .append('svg')
    .attr('width', width + 100)
    .attr('height', height + 100)
    .append('g')
    .attr('transform', `translate(${margin.left}, ${margin.top})`)

  const data = prices
  data.forEach(d => {
    d.date = new Date(d.date)
  })
  
  x = d3.scaleTime().range([0, width]).domain(d3.extent(data, (d) => d.date))
  y = d3.scaleLinear().range([height, 0]).domain([0, d3.max(data, (d) => d.price)])

  let valueline = d3.line()
    .x(d => x(d.date))
    .y(d => y(d.price))
    .curve(d3.curveMonotoneX)(data)

  svg.append('path')
      .data([data])
      .attr('class', 'line')
      .attr('d', valueline)

  svg.append('g')
      .attr('transform', `translate(0, ${height})`)
      .call(d3.axisBottom(x))

  svg.append('g')
    .call(d3.axisLeft(y))

  pointsAndValue(data, minPrice, name)
  bottomArea(data)
}

export default draw