import React from 'react';
import logo from './logo.svg';
import './App.css';

const App: React.FC = () => {
  return (
    <div className="App">
      <header className="App-header">
        <a 
          href="https://www.linkedin.com/in/randy-collier-3a29759/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <img style={{"borderRadius": "50%"}} src="/assets/rcollier.jpg" />
        </a>

        <h1
          className="h1"
        >
          Randy Collier
        </h1>
        <a
          className="App-link"
          href="https://www.linkedin.com/in/randy-collier-3a29759/"
          target="_blank"
          rel="noopener noreferrer"
        >
          Front-End Engineer
        </a>
      </header>
    </div>
  );
}

export default App;
