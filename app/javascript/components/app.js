import React from 'react'
import { createRoot } from 'react-dom/client'

const App = () => {
  return <div>I am the React component, Hola</div>
}

const container = document.getElementById('app')
const root = createRoot(container)

root.render(<App />)