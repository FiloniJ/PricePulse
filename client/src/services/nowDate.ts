const formDate = (date: Date): string => {
  const day: string = String(date.getDate()).padStart(2, '0')
  const month: string = String(date.getMonth() + 1).padStart(2, '0')
  const year: number = date.getFullYear()
  return `${year}-${month}-${day}`
}

export const getTodayDate = (): string => {
  return formDate(new Date())
}

export const getOldDate = (day: number, startDate?: any): string => {
  startDate = startDate ? new Date(startDate) : new Date()
  return formDate(new Date(startDate - day * 24 * 3600 * 1000))
}
